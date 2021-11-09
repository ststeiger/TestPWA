
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
  "uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "dc94ae36-0567-4f2d-a1e6-18a7b26fd09f",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "1dad628c-b877-4d66-bc1a-41fc03754b01",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "a10b160b-a5e6-445c-9889-0fc5ffe0236c",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "2bb49d9a-025d-4016-ab07-11737c9631f4",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "0bd35dd2-d550-4b73-ab41-19fbb7071940",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "022523c2-9e7d-4639-a62d-1ccf25af4396",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "969ce8fc-c74a-4f88-9fe4-e9bff4e3231a",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
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
      "uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
      "parent_uuid": "8f3b6773-0d9f-44ad-bca6-92ecef7afa16",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "07579ca2-da0a-42dc-854e-d809b1ea73a4",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4e704609-ea64-4a88-8ce7-93c8b5996303",
              "parent_uuid": "07579ca2-da0a-42dc-854e-d809b1ea73a4",
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
              "uuid": "fbef1f12-2a4f-4bce-b77e-156b8776afb5",
              "parent_uuid": "07579ca2-da0a-42dc-854e-d809b1ea73a4",
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
              "uuid": "bb8c3a1e-11f8-4eb4-a30f-748e984056c2",
              "parent_uuid": "07579ca2-da0a-42dc-854e-d809b1ea73a4",
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
              "uuid": "028bc932-f38f-4419-9e66-694ddaf88a4a",
              "parent_uuid": "07579ca2-da0a-42dc-854e-d809b1ea73a4",
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
          "uuid": "99e10319-f91e-4e9e-b8bf-36992901ad11",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "861f400d-3683-4b15-8179-5b400bf72581",
              "parent_uuid": "99e10319-f91e-4e9e-b8bf-36992901ad11",
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
              "uuid": "3c4cbe42-7d8e-4150-a82b-5b2a57d8cdde",
              "parent_uuid": "99e10319-f91e-4e9e-b8bf-36992901ad11",
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
              "uuid": "96e5d392-d0cf-43c6-9a33-3ee7e4d21326",
              "parent_uuid": "99e10319-f91e-4e9e-b8bf-36992901ad11",
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
              "uuid": "22a222fd-dda6-44b0-88dc-b1b88ff52f2f",
              "parent_uuid": "99e10319-f91e-4e9e-b8bf-36992901ad11",
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
          "uuid": "a0e95c33-17f0-4000-9d3f-5af311ea887c",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7170bd0-5912-41ed-b713-9f653c830357",
              "parent_uuid": "a0e95c33-17f0-4000-9d3f-5af311ea887c",
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
              "uuid": "21563236-fd3b-480e-accf-ef2c9808ee73",
              "parent_uuid": "a0e95c33-17f0-4000-9d3f-5af311ea887c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "max-height: 4cm;"
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
              "uuid": "8f51e969-feab-411d-9045-bb50de159824",
              "parent_uuid": "a0e95c33-17f0-4000-9d3f-5af311ea887c",
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
              "uuid": "97b6f9a2-4acf-4572-9ddd-5722ecd9a96a",
              "parent_uuid": "a0e95c33-17f0-4000-9d3f-5af311ea887c",
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
              "uuid": "f9e5c396-353d-4ca0-bd55-9dae1def7db1",
              "parent_uuid": "a0e95c33-17f0-4000-9d3f-5af311ea887c",
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
              "uuid": "10cfe574-5057-489f-88a2-806394baa206",
              "parent_uuid": "a0e95c33-17f0-4000-9d3f-5af311ea887c",
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
          "uuid": "85d495b8-84b9-4629-93d3-cd7c79a342d8",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "73328fe9-5898-4a83-8b86-1d8f4a7aab0a",
              "parent_uuid": "85d495b8-84b9-4629-93d3-cd7c79a342d8",
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
          "uuid": "6016a23f-bfca-4f5b-a14d-92a69a170b09",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20115c74-ffc3-4372-867a-42671a66713c",
              "parent_uuid": "6016a23f-bfca-4f5b-a14d-92a69a170b09",
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
              "uuid": "97b5582f-fea1-491c-aa19-0fb0476fdb1c",
              "parent_uuid": "6016a23f-bfca-4f5b-a14d-92a69a170b09",
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
              "uuid": "1d716db2-60ad-41fb-bbff-a4a28482d9fa",
              "parent_uuid": "6016a23f-bfca-4f5b-a14d-92a69a170b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8169a134-16a8-4fde-b756-2bb09c2832be",
                  "parent_uuid": "1d716db2-60ad-41fb-bbff-a4a28482d9fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e8f8b6f-7f3a-4b94-9abe-ccf2209f2a55",
              "parent_uuid": "6016a23f-bfca-4f5b-a14d-92a69a170b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ca3e7f1-b16b-4c07-ac1e-22aaecb3430c",
                  "parent_uuid": "1e8f8b6f-7f3a-4b94-9abe-ccf2209f2a55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bbde17b-ffb4-4f39-954f-f36ca13fcb40",
              "parent_uuid": "6016a23f-bfca-4f5b-a14d-92a69a170b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c32b5f5-0d73-4dc4-b317-2329afe29e22",
                  "parent_uuid": "4bbde17b-ffb4-4f39-954f-f36ca13fcb40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cc7fae7-c7e9-4943-a242-5bec95b40d8c",
              "parent_uuid": "6016a23f-bfca-4f5b-a14d-92a69a170b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbdf86c7-b92f-49c3-8775-4c3b92a50dc1",
                  "parent_uuid": "2cc7fae7-c7e9-4943-a242-5bec95b40d8c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "163ef018-8efa-4c18-ba40-6b10a77436bf",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5d95a76-7356-4500-9f60-8822e2553086",
              "parent_uuid": "163ef018-8efa-4c18-ba40-6b10a77436bf",
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
              "uuid": "a17ed1af-5af1-41ed-9b51-ff14f41d4ffd",
              "parent_uuid": "163ef018-8efa-4c18-ba40-6b10a77436bf",
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
              "uuid": "cf6e975f-9c99-473b-8cd7-0c8680d41c73",
              "parent_uuid": "163ef018-8efa-4c18-ba40-6b10a77436bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adec71f7-81bf-48f7-9144-0190ba0ab830",
                  "parent_uuid": "cf6e975f-9c99-473b-8cd7-0c8680d41c73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dfff49ba-25d1-403e-a9e7-0752bd403496",
              "parent_uuid": "163ef018-8efa-4c18-ba40-6b10a77436bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cd359ea-19f6-469d-bfad-bfbf9fd16069",
                  "parent_uuid": "dfff49ba-25d1-403e-a9e7-0752bd403496",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16adf50b-68c4-4067-9ace-f5081113cc56",
              "parent_uuid": "163ef018-8efa-4c18-ba40-6b10a77436bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d10db4db-70d4-4be6-99b7-e4bf19f4c3da",
                  "parent_uuid": "16adf50b-68c4-4067-9ace-f5081113cc56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0e1fa56-d658-492e-9bcc-6b90a1b7159c",
              "parent_uuid": "163ef018-8efa-4c18-ba40-6b10a77436bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bdb8bbd2-59a3-4c08-a8b4-b036a321ade9",
                  "parent_uuid": "a0e1fa56-d658-492e-9bcc-6b90a1b7159c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f0564844-52b2-4c71-9015-b0e3c0498bbc",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a430fbba-3453-4fd3-a716-bf6b41b517f4",
              "parent_uuid": "f0564844-52b2-4c71-9015-b0e3c0498bbc",
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
              "uuid": "0cc9a8af-4f20-4452-9aed-994aa116f46e",
              "parent_uuid": "f0564844-52b2-4c71-9015-b0e3c0498bbc",
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
              "uuid": "7d64d7ac-6a36-49fe-a9c4-d8d5437068db",
              "parent_uuid": "f0564844-52b2-4c71-9015-b0e3c0498bbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "febab6a5-b9f4-4465-ad1c-3875360fbe81",
                  "parent_uuid": "7d64d7ac-6a36-49fe-a9c4-d8d5437068db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "864b54c1-45c5-4114-a14a-60b32c1d44f0",
              "parent_uuid": "f0564844-52b2-4c71-9015-b0e3c0498bbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aaa47f7d-f076-477d-9d30-ce8ef321c7b4",
                  "parent_uuid": "864b54c1-45c5-4114-a14a-60b32c1d44f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bc515a8-b4fd-420e-8f08-75dc3cb74c6c",
              "parent_uuid": "f0564844-52b2-4c71-9015-b0e3c0498bbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e4f3148-730d-48c5-8a7c-3395b42cc9d7",
                  "parent_uuid": "1bc515a8-b4fd-420e-8f08-75dc3cb74c6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "747b6733-59dd-4da9-920b-8580916b927f",
              "parent_uuid": "f0564844-52b2-4c71-9015-b0e3c0498bbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e766e8a-a54f-4627-b70d-f06560c39c5a",
                  "parent_uuid": "747b6733-59dd-4da9-920b-8580916b927f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "74f02379-9ccd-47c4-a57d-b2e5f207d4cc",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c633e239-222b-44ca-a5a6-a45083870ea7",
              "parent_uuid": "74f02379-9ccd-47c4-a57d-b2e5f207d4cc",
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
              "uuid": "99a67556-f15b-4824-908e-9f8d2641a4dc",
              "parent_uuid": "74f02379-9ccd-47c4-a57d-b2e5f207d4cc",
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
              "uuid": "053e6bd3-2886-4ce9-b487-7a2b61d6b867",
              "parent_uuid": "74f02379-9ccd-47c4-a57d-b2e5f207d4cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b956981-7132-4fc0-bef0-272ccc3024b6",
                  "parent_uuid": "053e6bd3-2886-4ce9-b487-7a2b61d6b867",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9deba41d-0e43-4257-9075-b6da37f1dc76",
              "parent_uuid": "74f02379-9ccd-47c4-a57d-b2e5f207d4cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4201f031-19a0-425f-be82-19b0f254cb1a",
                  "parent_uuid": "9deba41d-0e43-4257-9075-b6da37f1dc76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d18b9b8f-1507-4ea4-8ce3-16054953b01b",
              "parent_uuid": "74f02379-9ccd-47c4-a57d-b2e5f207d4cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df6e2765-92c7-4124-bf4c-3f6d5eb1a048",
                  "parent_uuid": "d18b9b8f-1507-4ea4-8ce3-16054953b01b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f669ce41-bbc2-447a-8b43-9956231dd56d",
              "parent_uuid": "74f02379-9ccd-47c4-a57d-b2e5f207d4cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "216b3ff2-3128-4890-b172-a8f3bfbc272b",
                  "parent_uuid": "f669ce41-bbc2-447a-8b43-9956231dd56d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c563f60d-97db-4bcc-b12d-205fefaf8781",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0465e136-c1fa-4868-8684-ca0a0b0019b5",
              "parent_uuid": "c563f60d-97db-4bcc-b12d-205fefaf8781",
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
          "uuid": "e2e949af-31ee-4539-8785-046f827506c0",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0adfa276-7d3a-4dab-a0e4-d75b046ee767",
              "parent_uuid": "e2e949af-31ee-4539-8785-046f827506c0",
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
              "uuid": "e0e3cbaa-6ed9-4316-8305-9f678ce00700",
              "parent_uuid": "e2e949af-31ee-4539-8785-046f827506c0",
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
              "uuid": "2fe2ba5c-8593-4f34-a555-c67c20cae963",
              "parent_uuid": "e2e949af-31ee-4539-8785-046f827506c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9985c79b-90b8-4ef9-8e04-e6d1ff17672a",
                  "parent_uuid": "2fe2ba5c-8593-4f34-a555-c67c20cae963",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64a15923-c669-43c1-8872-de996650b089",
              "parent_uuid": "e2e949af-31ee-4539-8785-046f827506c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42251a8d-70c4-418c-8ae0-1562980702d4",
                  "parent_uuid": "64a15923-c669-43c1-8872-de996650b089",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9d831a5-966f-42f9-8a4f-a88d5a3a7a92",
              "parent_uuid": "e2e949af-31ee-4539-8785-046f827506c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6e2999b-b751-44ac-9cf5-8fbe916e195f",
                  "parent_uuid": "b9d831a5-966f-42f9-8a4f-a88d5a3a7a92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cf8788a-ddcf-42fe-ae1f-16d882005dbf",
              "parent_uuid": "e2e949af-31ee-4539-8785-046f827506c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65f09faa-b067-4600-9034-17ff8229d2cf",
                  "parent_uuid": "2cf8788a-ddcf-42fe-ae1f-16d882005dbf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b5ec3aae-00d0-42eb-b505-62609d70d6f2",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "616a1054-9e42-41b1-8ff9-7cf9d8cdaabe",
              "parent_uuid": "b5ec3aae-00d0-42eb-b505-62609d70d6f2",
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
              "uuid": "a8c4de3c-569d-4dfd-b34a-ba8516df578b",
              "parent_uuid": "b5ec3aae-00d0-42eb-b505-62609d70d6f2",
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
              "uuid": "01d75196-8ecb-4216-b01e-aed51d52854a",
              "parent_uuid": "b5ec3aae-00d0-42eb-b505-62609d70d6f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfbd3f06-5ec3-4560-b5c6-26e829c6c7ff",
                  "parent_uuid": "01d75196-8ecb-4216-b01e-aed51d52854a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8cdf05dc-eb13-4abb-acd7-1f19e52ea34a",
              "parent_uuid": "b5ec3aae-00d0-42eb-b505-62609d70d6f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67ff6494-c44b-4d2a-b2de-dc27a3d00eea",
                  "parent_uuid": "8cdf05dc-eb13-4abb-acd7-1f19e52ea34a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef573de1-75b8-4a9d-b909-10f55f880886",
              "parent_uuid": "b5ec3aae-00d0-42eb-b505-62609d70d6f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73a8c45a-5b27-4f9c-b665-f5c612aadce3",
                  "parent_uuid": "ef573de1-75b8-4a9d-b909-10f55f880886",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1186810-da00-4bf5-af92-4adaa2d0d2d2",
              "parent_uuid": "b5ec3aae-00d0-42eb-b505-62609d70d6f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b887c431-aaee-4b7b-ab92-f08df9c9d6d9",
                  "parent_uuid": "a1186810-da00-4bf5-af92-4adaa2d0d2d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a6c37e97-3fb4-41e9-a071-379cdb15ad9b",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "728cae2f-1ccf-4f5b-9743-cc749045725a",
              "parent_uuid": "a6c37e97-3fb4-41e9-a071-379cdb15ad9b",
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
              "uuid": "b77e4ba2-c1cf-4ae5-b1bc-bc63bcbe925d",
              "parent_uuid": "a6c37e97-3fb4-41e9-a071-379cdb15ad9b",
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
              "uuid": "dbb3952f-60d4-4c90-93a4-35aa4d1903ea",
              "parent_uuid": "a6c37e97-3fb4-41e9-a071-379cdb15ad9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf7335a6-0f47-4aba-9d13-ab1349b06968",
                  "parent_uuid": "dbb3952f-60d4-4c90-93a4-35aa4d1903ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bae36fd-beb2-4049-881c-4b0b01c0fff6",
              "parent_uuid": "a6c37e97-3fb4-41e9-a071-379cdb15ad9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "069b7fe0-a0ab-41c0-9746-c6486b5cd2ed",
                  "parent_uuid": "0bae36fd-beb2-4049-881c-4b0b01c0fff6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f992694-3de5-4337-b02c-93341077cf52",
              "parent_uuid": "a6c37e97-3fb4-41e9-a071-379cdb15ad9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ebfbdcd-a685-477c-b8f1-47a06882c735",
                  "parent_uuid": "3f992694-3de5-4337-b02c-93341077cf52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a4034f9-08a5-484a-ad7b-b079fd46a72c",
              "parent_uuid": "a6c37e97-3fb4-41e9-a071-379cdb15ad9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "706983c3-cdfe-4978-b202-aee04ebb29a4",
                  "parent_uuid": "3a4034f9-08a5-484a-ad7b-b079fd46a72c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0858650d-57ec-4085-9205-cfb2896c6bf4",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2766634a-6a3d-4309-b47f-896750b9b60d",
              "parent_uuid": "0858650d-57ec-4085-9205-cfb2896c6bf4",
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
              "uuid": "d001aa67-beaa-4177-9712-f7ec7a22f44c",
              "parent_uuid": "0858650d-57ec-4085-9205-cfb2896c6bf4",
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
              "uuid": "3b94bcb2-d27d-4ddc-b8fd-fd84018ec8ce",
              "parent_uuid": "0858650d-57ec-4085-9205-cfb2896c6bf4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7dcc747-9215-4f18-8721-cee23991855c",
                  "parent_uuid": "3b94bcb2-d27d-4ddc-b8fd-fd84018ec8ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee41c7ea-57e3-426d-b82b-83d67d1e991e",
              "parent_uuid": "0858650d-57ec-4085-9205-cfb2896c6bf4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1e31017-14ee-4e35-af6e-b31de5a0e983",
                  "parent_uuid": "ee41c7ea-57e3-426d-b82b-83d67d1e991e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93c5bf60-0d8c-4998-8daa-30e71ae620e2",
              "parent_uuid": "0858650d-57ec-4085-9205-cfb2896c6bf4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0742738-3ad2-4bc8-b4c8-6482fe632ac9",
                  "parent_uuid": "93c5bf60-0d8c-4998-8daa-30e71ae620e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22415b20-42d5-4c01-9ab8-7e662e7ed95d",
              "parent_uuid": "0858650d-57ec-4085-9205-cfb2896c6bf4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5f750d6-ad9a-4d05-b66c-8780de825c18",
                  "parent_uuid": "22415b20-42d5-4c01-9ab8-7e662e7ed95d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "664c91fb-4c40-4402-8e64-af6a0a16ccc4",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0979d397-8b7b-4bcc-b0bb-184d6683ccbc",
              "parent_uuid": "664c91fb-4c40-4402-8e64-af6a0a16ccc4",
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
              "uuid": "09677b37-a889-4562-b535-4348aec29135",
              "parent_uuid": "664c91fb-4c40-4402-8e64-af6a0a16ccc4",
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
              "uuid": "78e16c97-138e-42ba-8135-7d2555f4c5f3",
              "parent_uuid": "664c91fb-4c40-4402-8e64-af6a0a16ccc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36034774-bd0c-4cae-b341-a91281080c2a",
                  "parent_uuid": "78e16c97-138e-42ba-8135-7d2555f4c5f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d24b34a1-66f9-4e16-b6c7-6d7ac9bd4f26",
              "parent_uuid": "664c91fb-4c40-4402-8e64-af6a0a16ccc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0375435e-add2-4062-a303-b4030328ee6b",
                  "parent_uuid": "d24b34a1-66f9-4e16-b6c7-6d7ac9bd4f26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42ce05fb-8312-43bc-b975-93976c007bc8",
              "parent_uuid": "664c91fb-4c40-4402-8e64-af6a0a16ccc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab28560e-9587-445d-a1b4-c7fd372cbb0a",
                  "parent_uuid": "42ce05fb-8312-43bc-b975-93976c007bc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9666f84a-7acb-4124-84bf-9fa51424aa12",
              "parent_uuid": "664c91fb-4c40-4402-8e64-af6a0a16ccc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66cd1dcd-e0ab-4371-a92a-8a6ada653c8c",
                  "parent_uuid": "9666f84a-7acb-4124-84bf-9fa51424aa12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70b4a549-552e-42f8-ba33-3538b2d81a52",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "03d1d468-38b3-4313-8909-2217362b6ffb",
              "parent_uuid": "70b4a549-552e-42f8-ba33-3538b2d81a52",
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
              "uuid": "4a1824c9-6135-4f6b-b6d1-c388bafa81c9",
              "parent_uuid": "70b4a549-552e-42f8-ba33-3538b2d81a52",
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
              "uuid": "afa2ba6a-ff60-4e9d-99ee-04d79789e76d",
              "parent_uuid": "70b4a549-552e-42f8-ba33-3538b2d81a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "584af571-46ad-4cc3-84a1-1f80323f96b8",
                  "parent_uuid": "afa2ba6a-ff60-4e9d-99ee-04d79789e76d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "695dc253-644f-4d7e-a79d-f0a806317655",
              "parent_uuid": "70b4a549-552e-42f8-ba33-3538b2d81a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c5abd6b-7c8f-4874-bc86-048ecbfc7a90",
                  "parent_uuid": "695dc253-644f-4d7e-a79d-f0a806317655",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b134d06-a933-461d-b708-bd5516c949b5",
              "parent_uuid": "70b4a549-552e-42f8-ba33-3538b2d81a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7a25289-5899-4cbb-8e88-5aa9625a9908",
                  "parent_uuid": "2b134d06-a933-461d-b708-bd5516c949b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ab926e7-6f34-4e22-9f2b-8efc4344514a",
              "parent_uuid": "70b4a549-552e-42f8-ba33-3538b2d81a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "438a9bb9-89ac-4d12-b8a6-a3e4905fc9fe",
                  "parent_uuid": "0ab926e7-6f34-4e22-9f2b-8efc4344514a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b7262998-f082-4797-974a-76ca5470dfa6",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68f22ded-359a-4720-a337-c501e30aa3d6",
              "parent_uuid": "b7262998-f082-4797-974a-76ca5470dfa6",
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
              "uuid": "06cb7b1c-c0cd-4f72-9b24-2c7fb9b3fbc0",
              "parent_uuid": "b7262998-f082-4797-974a-76ca5470dfa6",
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
              "uuid": "c673b8e6-0fd9-4f03-94f4-d14d384475bd",
              "parent_uuid": "b7262998-f082-4797-974a-76ca5470dfa6",
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
                  "uuid": "789fcdb8-88d1-446a-85fb-9d74e1b31b54",
                  "parent_uuid": "c673b8e6-0fd9-4f03-94f4-d14d384475bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "392d570d-dbba-4065-aa83-40ac7c7508ac",
              "parent_uuid": "b7262998-f082-4797-974a-76ca5470dfa6",
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
                  "uuid": "ca885305-9985-4918-9ec7-a40e7aa8d5b4",
                  "parent_uuid": "392d570d-dbba-4065-aa83-40ac7c7508ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17e35f24-aec3-4bcf-b7ad-a00325f0dd67",
              "parent_uuid": "b7262998-f082-4797-974a-76ca5470dfa6",
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
                  "uuid": "1d85bae8-34e7-4d22-b924-1c555e121a2f",
                  "parent_uuid": "17e35f24-aec3-4bcf-b7ad-a00325f0dd67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52f97b44-6101-425b-a5c1-fe157f12add9",
              "parent_uuid": "b7262998-f082-4797-974a-76ca5470dfa6",
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
                  "uuid": "c62d7031-ab7a-4fb0-8e99-957052db7871",
                  "parent_uuid": "52f97b44-6101-425b-a5c1-fe157f12add9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb3400c3-504a-494f-88bc-f4aa363f974d",
              "parent_uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
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
              "uuid": "e23ab8c1-369e-4591-96e3-0d9d70a347e4",
              "parent_uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
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
              "uuid": "69758413-92ff-4005-9ee0-9e743efc3d25",
              "parent_uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
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
              "uuid": "b6b71d7c-4c9e-4e12-afce-08e0140c6c6f",
              "parent_uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
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
                  "uuid": "773a14a2-cb73-46c3-ae23-b8b30aa2316f",
                  "parent_uuid": "b6b71d7c-4c9e-4e12-afce-08e0140c6c6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3ccc7a1-5f66-4e9c-918c-41289e15dbb3",
              "parent_uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
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
                  "uuid": "cf76f441-5ec0-4683-83f1-16061c249d8c",
                  "parent_uuid": "e3ccc7a1-5f66-4e9c-918c-41289e15dbb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebe50510-54c1-4d7a-97c0-5c69646fa13f",
              "parent_uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
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
                  "uuid": "5b72c3e9-83bc-4f13-ba6d-ae391f795d01",
                  "parent_uuid": "ebe50510-54c1-4d7a-97c0-5c69646fa13f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "572ff5dc-c288-4dd9-b965-3477d304053d",
              "parent_uuid": "2fb0dbf4-5d4a-4391-92cc-12e58b40e794",
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
                  "uuid": "0151c94b-9880-4711-87d5-00f14306e440",
                  "parent_uuid": "572ff5dc-c288-4dd9-b965-3477d304053d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8d707ff-66e6-4ed0-b049-1ab48ec6d153",
              "parent_uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
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
              "uuid": "6a3c7d89-66b1-4690-8844-7918ebd58cc6",
              "parent_uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
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
              "uuid": "ef397313-7b4d-4e3e-8a08-7bf93f974612",
              "parent_uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
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
                  "uuid": "88a5f605-1739-46f1-9847-ca3306686628",
                  "parent_uuid": "ef397313-7b4d-4e3e-8a08-7bf93f974612",
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
              "uuid": "a46d1d11-6e5c-4db5-bec5-2896d4db3557",
              "parent_uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
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
                  "uuid": "68c399f5-b65d-431f-ab62-7307acd9de11",
                  "parent_uuid": "a46d1d11-6e5c-4db5-bec5-2896d4db3557",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f0c5ead-cf9c-46d1-ad0b-070a9de2fd2f",
              "parent_uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
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
                  "uuid": "ad27710c-a889-42a6-9826-5f7297584054",
                  "parent_uuid": "8f0c5ead-cf9c-46d1-ad0b-070a9de2fd2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb2a32de-b854-4fcb-92b9-da17e380816e",
              "parent_uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
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
                  "uuid": "cba67088-7168-425f-87ea-f2480b8ee15c",
                  "parent_uuid": "eb2a32de-b854-4fcb-92b9-da17e380816e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1762f5b6-1f12-4fdd-8f71-b00ebb2b5b8d",
              "parent_uuid": "ac742fe5-93b6-4da5-bd5e-91a78ffe068d",
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
                  "uuid": "1ae7b945-b978-4fd0-a2d4-031d844698b4",
                  "parent_uuid": "1762f5b6-1f12-4fdd-8f71-b00ebb2b5b8d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9735995f-fe52-4c41-9ff8-16e9d357d26a",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9be90448-3759-4d10-9238-105c84dac2a8",
              "parent_uuid": "9735995f-fe52-4c41-9ff8-16e9d357d26a",
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
              "uuid": "8cc73358-9b5b-4bb2-87f1-70d9216ce6e8",
              "parent_uuid": "9735995f-fe52-4c41-9ff8-16e9d357d26a",
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
              "uuid": "37fa1537-07f9-463b-82b6-4b25879606c5",
              "parent_uuid": "9735995f-fe52-4c41-9ff8-16e9d357d26a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82c9f3b4-17e6-45a5-9f96-0343721282db",
                  "parent_uuid": "37fa1537-07f9-463b-82b6-4b25879606c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf6672e0-1bd1-4b28-a752-3cf251a56a59",
              "parent_uuid": "9735995f-fe52-4c41-9ff8-16e9d357d26a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00cadcd3-3fba-46fa-b5de-a604ec404fff",
                  "parent_uuid": "cf6672e0-1bd1-4b28-a752-3cf251a56a59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e86e6c0-c6f1-455d-9c2f-54702b0f824b",
              "parent_uuid": "9735995f-fe52-4c41-9ff8-16e9d357d26a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7c10d07-e01a-4dc1-9b1d-193b14a46496",
                  "parent_uuid": "7e86e6c0-c6f1-455d-9c2f-54702b0f824b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b59055b4-ae84-4c96-82be-b4878bb3e5b8",
              "parent_uuid": "9735995f-fe52-4c41-9ff8-16e9d357d26a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4c2f712-1267-4f30-844d-f9bdc3e83fa1",
                  "parent_uuid": "b59055b4-ae84-4c96-82be-b4878bb3e5b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7a3ab80c-ffd4-46db-9008-9e89b06fa87a",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "878795bf-a0bd-45ca-bd6b-e3f1071e9eb5",
              "parent_uuid": "7a3ab80c-ffd4-46db-9008-9e89b06fa87a",
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
              "uuid": "081d6272-3b69-4177-b742-f1220b0666db",
              "parent_uuid": "7a3ab80c-ffd4-46db-9008-9e89b06fa87a",
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
              "uuid": "11b85021-d8bf-4ff9-9cfe-71b8613a08f7",
              "parent_uuid": "7a3ab80c-ffd4-46db-9008-9e89b06fa87a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2a77728-3729-4938-86f4-8785585a0385",
                  "parent_uuid": "11b85021-d8bf-4ff9-9cfe-71b8613a08f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b402f64-bfd6-4fa9-a9fd-0875b6d06ef7",
              "parent_uuid": "7a3ab80c-ffd4-46db-9008-9e89b06fa87a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1e9d36b-9dc8-4d98-8106-6e6526b5da86",
                  "parent_uuid": "4b402f64-bfd6-4fa9-a9fd-0875b6d06ef7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "219cb419-6867-49f5-9f54-fe9c9966a3cf",
              "parent_uuid": "7a3ab80c-ffd4-46db-9008-9e89b06fa87a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1babbc2e-f43f-4f99-8913-71115e545805",
                  "parent_uuid": "219cb419-6867-49f5-9f54-fe9c9966a3cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2ccc36d-9efa-419a-9014-f200d9fa8bcd",
              "parent_uuid": "7a3ab80c-ffd4-46db-9008-9e89b06fa87a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8e85947-e69b-4899-89ed-f426ceaab342",
                  "parent_uuid": "b2ccc36d-9efa-419a-9014-f200d9fa8bcd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "719c0b05-58a4-4c11-913d-956382ff712d",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1dcd5315-7161-4db3-b5d6-fd8b53442aff",
              "parent_uuid": "719c0b05-58a4-4c11-913d-956382ff712d",
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
              "uuid": "4a37a061-8970-4680-83a9-51d59b77fe53",
              "parent_uuid": "719c0b05-58a4-4c11-913d-956382ff712d",
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
              "uuid": "323b2a40-dbeb-43a9-98e2-1bc07f496e01",
              "parent_uuid": "719c0b05-58a4-4c11-913d-956382ff712d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "031ae164-ea80-4289-9f1b-9ea25828c7f4",
                  "parent_uuid": "323b2a40-dbeb-43a9-98e2-1bc07f496e01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "130db83d-de28-4d2f-b4f9-670c5cc5213f",
              "parent_uuid": "719c0b05-58a4-4c11-913d-956382ff712d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43655098-5fd7-4247-834c-942d57bebfce",
                  "parent_uuid": "130db83d-de28-4d2f-b4f9-670c5cc5213f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2e69b77-acd1-4870-8995-5c756bc9473e",
              "parent_uuid": "719c0b05-58a4-4c11-913d-956382ff712d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f950d64-34fa-4cd7-8b85-2cdb045d6dbc",
                  "parent_uuid": "a2e69b77-acd1-4870-8995-5c756bc9473e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7af3676-3c41-443d-aa03-10a4f7d79826",
              "parent_uuid": "719c0b05-58a4-4c11-913d-956382ff712d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0958beb4-2616-468c-b1f2-d52fd128c6d4",
                  "parent_uuid": "a7af3676-3c41-443d-aa03-10a4f7d79826",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "616c6a9d-1c5a-4685-8778-47257387ebc8",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6c16728-c37d-4637-aac7-10743e40cae6",
              "parent_uuid": "616c6a9d-1c5a-4685-8778-47257387ebc8",
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
              "uuid": "ff80ca22-b9c4-4e57-a579-05d23d115217",
              "parent_uuid": "616c6a9d-1c5a-4685-8778-47257387ebc8",
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
              "uuid": "b8029fd3-fa76-4602-9273-9353442024f0",
              "parent_uuid": "616c6a9d-1c5a-4685-8778-47257387ebc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61a19f20-9957-40b6-bfa9-5014720e4782",
                  "parent_uuid": "b8029fd3-fa76-4602-9273-9353442024f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "accc44cb-df7c-4f09-8bb1-d43dc2979305",
              "parent_uuid": "616c6a9d-1c5a-4685-8778-47257387ebc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b724fee5-c9e2-467b-97bc-d491ee625c00",
                  "parent_uuid": "accc44cb-df7c-4f09-8bb1-d43dc2979305",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2dfec49-5273-4dcf-a928-af7c083d5fb6",
              "parent_uuid": "616c6a9d-1c5a-4685-8778-47257387ebc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c05b9ae-166b-4f7a-802e-028288e54851",
                  "parent_uuid": "f2dfec49-5273-4dcf-a928-af7c083d5fb6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e6317b2-9275-42f5-a210-836830a3e61c",
              "parent_uuid": "616c6a9d-1c5a-4685-8778-47257387ebc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c191c43-206b-4d34-b7b4-a88b139e4eb3",
                  "parent_uuid": "9e6317b2-9275-42f5-a210-836830a3e61c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "398bcd8f-0f52-4483-a5ba-341c5ced507b",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f6091eb9-697f-4029-8c33-03f863444436",
              "parent_uuid": "398bcd8f-0f52-4483-a5ba-341c5ced507b",
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
          "uuid": "6c2bee1f-5a0f-44de-98de-5001f7558e39",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "03b9fb22-3477-4c98-81f4-44cd803328fc",
              "parent_uuid": "6c2bee1f-5a0f-44de-98de-5001f7558e39",
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
              "uuid": "5decd5e1-2d42-4419-a60c-b65c8198f1bf",
              "parent_uuid": "6c2bee1f-5a0f-44de-98de-5001f7558e39",
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
              "uuid": "7f0a9287-d918-4cd9-b84b-6cca619cfe5c",
              "parent_uuid": "6c2bee1f-5a0f-44de-98de-5001f7558e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95151681-a01e-4150-890c-f9ea3eb4d3f5",
                  "parent_uuid": "7f0a9287-d918-4cd9-b84b-6cca619cfe5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f487e6c0-4c34-45f7-a2b8-99a38e85e143",
              "parent_uuid": "6c2bee1f-5a0f-44de-98de-5001f7558e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb52da43-5189-4db7-b7f2-4cc24f8a8083",
                  "parent_uuid": "f487e6c0-4c34-45f7-a2b8-99a38e85e143",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bcd83641-9d44-4fcd-b5f7-4b0a5c66466c",
              "parent_uuid": "6c2bee1f-5a0f-44de-98de-5001f7558e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72041a10-5035-43d7-98e1-7b9b810d5571",
                  "parent_uuid": "bcd83641-9d44-4fcd-b5f7-4b0a5c66466c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f00036b-af0d-443b-8dc3-721b269339bf",
              "parent_uuid": "6c2bee1f-5a0f-44de-98de-5001f7558e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25a6d9ba-5af6-4a81-a064-d027c6e2582b",
                  "parent_uuid": "9f00036b-af0d-443b-8dc3-721b269339bf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8467c204-aeb9-4766-a76f-61e2fffec113",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39d36ccb-0bc4-4b0e-a377-5b4dc1965750",
              "parent_uuid": "8467c204-aeb9-4766-a76f-61e2fffec113",
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
              "uuid": "306e8630-2cba-4de7-8b88-2ede3de1a3ec",
              "parent_uuid": "8467c204-aeb9-4766-a76f-61e2fffec113",
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
              "uuid": "54ad8993-0083-4670-945b-3d8c722c786d",
              "parent_uuid": "8467c204-aeb9-4766-a76f-61e2fffec113",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "789e4a15-77e1-4595-88fe-2b05e98ce040",
                  "parent_uuid": "54ad8993-0083-4670-945b-3d8c722c786d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65e7871c-4ab2-48bf-bf95-43c396c5c69a",
              "parent_uuid": "8467c204-aeb9-4766-a76f-61e2fffec113",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc9bc76b-0932-4356-8985-61be4266e5db",
                  "parent_uuid": "65e7871c-4ab2-48bf-bf95-43c396c5c69a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14704cd2-3635-4603-ae38-cba85a807080",
              "parent_uuid": "8467c204-aeb9-4766-a76f-61e2fffec113",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "273450fc-1e6b-461c-91a9-65bb2ab23ad9",
                  "parent_uuid": "14704cd2-3635-4603-ae38-cba85a807080",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87388626-383a-4a20-82a6-8c19d440ada7",
              "parent_uuid": "8467c204-aeb9-4766-a76f-61e2fffec113",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d17be764-1a3a-4609-93cd-b0cd8f620fd2",
                  "parent_uuid": "87388626-383a-4a20-82a6-8c19d440ada7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b96667a9-8df7-4c68-99aa-7579d515e345",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ee03328-62c1-4886-a2b2-7f5a5c9b6b12",
              "parent_uuid": "b96667a9-8df7-4c68-99aa-7579d515e345",
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
              "uuid": "59034bb9-8f30-4c10-af08-a41c6056cc6a",
              "parent_uuid": "b96667a9-8df7-4c68-99aa-7579d515e345",
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
              "uuid": "6a4b33bf-0cd8-419b-a483-5f6374674891",
              "parent_uuid": "b96667a9-8df7-4c68-99aa-7579d515e345",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33eaf192-b581-48c5-8b35-ec556c9f6be7",
                  "parent_uuid": "6a4b33bf-0cd8-419b-a483-5f6374674891",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db2407ca-47f3-4acb-9604-f4a173a692ff",
              "parent_uuid": "b96667a9-8df7-4c68-99aa-7579d515e345",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43f50d56-43bd-46e7-9559-33b621d3296c",
                  "parent_uuid": "db2407ca-47f3-4acb-9604-f4a173a692ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53e12463-7bd8-4a70-9da5-c6a43d936ffd",
              "parent_uuid": "b96667a9-8df7-4c68-99aa-7579d515e345",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8ab080a-10cb-4633-8c38-3c5019c0d6dd",
                  "parent_uuid": "53e12463-7bd8-4a70-9da5-c6a43d936ffd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f61e9b50-b298-473a-84ec-10a7e62febc0",
              "parent_uuid": "b96667a9-8df7-4c68-99aa-7579d515e345",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fcf9ad2-9253-40d1-bbf0-9d29d0040d2e",
                  "parent_uuid": "f61e9b50-b298-473a-84ec-10a7e62febc0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ca636554-6ae4-45de-b452-8695b3b9565b",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a37c1b4-105d-4d5b-b531-2899ec4c27b3",
              "parent_uuid": "ca636554-6ae4-45de-b452-8695b3b9565b",
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
              "uuid": "4a7e8c71-f19d-4bfe-be5a-bf36a45edbad",
              "parent_uuid": "ca636554-6ae4-45de-b452-8695b3b9565b",
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
              "uuid": "4af9dd5a-bff7-4b85-b5d4-980d761a19a9",
              "parent_uuid": "ca636554-6ae4-45de-b452-8695b3b9565b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cdadccb-1304-4123-b668-2e4b35b7ce51",
                  "parent_uuid": "4af9dd5a-bff7-4b85-b5d4-980d761a19a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a44baa0-1651-4166-ae74-db5f888f22fc",
              "parent_uuid": "ca636554-6ae4-45de-b452-8695b3b9565b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97c4c573-0a38-47d5-9b8c-2b732db88882",
                  "parent_uuid": "5a44baa0-1651-4166-ae74-db5f888f22fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89cbc69b-b901-49c1-8fd5-3f34c45a40c7",
              "parent_uuid": "ca636554-6ae4-45de-b452-8695b3b9565b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ff8a1a1-cd0c-48f4-bf38-fca8c5b2530a",
                  "parent_uuid": "89cbc69b-b901-49c1-8fd5-3f34c45a40c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "019f0e5a-44b6-41e7-b953-e1d620a0566f",
              "parent_uuid": "ca636554-6ae4-45de-b452-8695b3b9565b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dbec84c-5f33-4c7a-8281-9129015edb89",
                  "parent_uuid": "019f0e5a-44b6-41e7-b953-e1d620a0566f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2bb25e2e-f3ef-42b8-b9fd-30d964891ddb",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52f15571-4ae8-4a86-95e7-c74c7ae0bc56",
              "parent_uuid": "2bb25e2e-f3ef-42b8-b9fd-30d964891ddb",
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
              "uuid": "19cdf236-8bda-45d8-b61b-7dbe6b78f272",
              "parent_uuid": "2bb25e2e-f3ef-42b8-b9fd-30d964891ddb",
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
              "uuid": "77f7972d-841c-4369-b97d-347dfa85fb87",
              "parent_uuid": "2bb25e2e-f3ef-42b8-b9fd-30d964891ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "475f9ef4-252b-4557-8e9d-1b0f21acbd2e",
                  "parent_uuid": "77f7972d-841c-4369-b97d-347dfa85fb87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5dd4aade-3127-44f8-a2c5-24f7cee0d829",
              "parent_uuid": "2bb25e2e-f3ef-42b8-b9fd-30d964891ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41ddff1a-bf13-4973-896e-ea11232444e6",
                  "parent_uuid": "5dd4aade-3127-44f8-a2c5-24f7cee0d829",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca43e503-4df0-40c7-b5ce-30b5a001a5de",
              "parent_uuid": "2bb25e2e-f3ef-42b8-b9fd-30d964891ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a8074b2-7ff6-4736-bdea-fd3634fe8f02",
                  "parent_uuid": "ca43e503-4df0-40c7-b5ce-30b5a001a5de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1999330c-7496-4236-b039-7247e437d7c5",
              "parent_uuid": "2bb25e2e-f3ef-42b8-b9fd-30d964891ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf2acd05-3455-4f9c-8eaa-1e0f95e06f1f",
                  "parent_uuid": "1999330c-7496-4236-b039-7247e437d7c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "71595199-457a-4dae-a11e-680c9d036354",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54d46438-ffe5-4419-8cee-b2f6d1c07181",
              "parent_uuid": "71595199-457a-4dae-a11e-680c9d036354",
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
          "uuid": "9fa131d4-208a-4b18-a8d4-082d202d00b2",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ac8e8ba-27bf-4f28-ac02-bb0a3c82238c",
              "parent_uuid": "9fa131d4-208a-4b18-a8d4-082d202d00b2",
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
          "uuid": "bec08661-2fac-4be0-bad7-cf3e1c1a171f",
          "parent_uuid": "db623cfd-7e9c-4f31-a365-a7ba6894328a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd8358e0-acc7-4630-990c-8ae0e4f75370",
              "parent_uuid": "bec08661-2fac-4be0-bad7-cf3e1c1a171f",
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
                  "uuid": "eb527b84-53cd-43b2-b78b-8a98b0ecf0f5",
                  "parent_uuid": "fd8358e0-acc7-4630-990c-8ae0e4f75370",
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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

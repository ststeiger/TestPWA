
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
  "uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
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
      "uuid": "fd25f14a-2b91-484d-b141-474a1a6b1e86",
      "parent_uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "3"
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
      "uuid": "99a26370-249e-4fcd-bc7f-cef36509c2a7",
      "parent_uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "77"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "a21d3cbc-379c-40c9-8b9e-72b1e40808bd",
      "parent_uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 2,
      "lvl": 0
    },
    {
      "uuid": "a63a242c-8bc1-4288-a307-8c7c59cb9093",
      "parent_uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "67"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "9914134f-fd1f-4cb4-a5d6-d1318d4d7e4e",
      "parent_uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "49"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "9a421592-6313-437a-b825-db4f6ecbf507",
      "parent_uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
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
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
      "parent_uuid": "bba41a0a-39e8-43ff-a984-916235f092fc",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d1c8998f-3d7c-475a-aa21-64e6c4aba5e6",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 2px solid #000000"
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
              "innerHtml": "\r\n                    <span>Datum:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "03b647a2-9e90-490e-b11c-a689b0afb38a",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "a815ea7f-ea8d-4c94-994d-569e1522bfeb",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "bb174348-f06f-4be2-8c38-92e158b030fb",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Schüttgutcontainer</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "fa61b13c-ae28-45b3-8c2a-3aff80448202",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "fe32d79b-0919-4f6c-86ca-23428e55c704",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "3e52d969-2d48-47dd-9acc-f346ca48517e",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "73c0da51-2712-4362-9be2-0540e9f9e402",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "4440a766-84b8-4dbf-991d-ca8d7a71e05f",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "e0666a3a-6137-4f32-856f-f2be918e0e20",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
              "uuid": "a639e319-48aa-4845-9f84-66a0b0bfaf27",
              "parent_uuid": "3996e769-f243-46de-a93e-b0af1fc80a0e",
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
          "uuid": "a9f2c0cc-acff-4347-a1ca-c0ceb1f31674",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3813102c-3a79-4360-80e9-faaa924393e2",
              "parent_uuid": "a9f2c0cc-acff-4347-a1ca-c0ceb1f31674",
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
              "uuid": "aa6d5436-32a1-4b76-bb78-2f880edefbdf",
              "parent_uuid": "a9f2c0cc-acff-4347-a1ca-c0ceb1f31674",
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
              "uuid": "4312b3c3-8069-4bcd-94f5-b2101b6829bd",
              "parent_uuid": "a9f2c0cc-acff-4347-a1ca-c0ceb1f31674",
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
              "uuid": "4f7085fe-be3b-4b0d-a47d-c1ff432e3691",
              "parent_uuid": "a9f2c0cc-acff-4347-a1ca-c0ceb1f31674",
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
          "uuid": "a120fe9a-39df-4237-b056-b36d693e25d0",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62f56f9f-6822-40f3-a57b-962858b8a82d",
              "parent_uuid": "a120fe9a-39df-4237-b056-b36d693e25d0",
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
                  "center"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"blink_notme\">Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9a234109-b6c6-4bcc-a380-a67e5eafa2d8",
              "parent_uuid": "a120fe9a-39df-4237-b056-b36d693e25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ],
                [
                  "style",
                  "height: 4.5cm;"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "53f0db39-0a3c-4f2a-beac-895b13f568e1",
              "parent_uuid": "a120fe9a-39df-4237-b056-b36d693e25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "5652df26-f035-49b6-b66b-02894b5504fc",
              "parent_uuid": "a120fe9a-39df-4237-b056-b36d693e25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">nicht in Ordnung</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "aa5d4e9e-205e-4ef2-801a-8fca2bb8898b",
              "parent_uuid": "a120fe9a-39df-4237-b056-b36d693e25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">erledigt</span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "bc18a54c-c6ee-46b0-9c49-33cbb8a1d83e",
              "parent_uuid": "a120fe9a-39df-4237-b056-b36d693e25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">nicht vorhanden</span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "7bbfb1a2-d8e0-43e8-93cf-c564a944411c",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "4"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f75a711c-a8f7-4518-aae7-064b036269bd",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "781781b1-c3cb-486f-a163-691374d6fb0c",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "f99b28c4-eac7-49dc-bb4f-65db890b7740",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "5f9bf5ae-4721-4179-9a27-d030a4b337f9",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "40fcc71f-4470-4cf8-af37-387d541cd285",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "c93ecc0b-a9b0-40da-8adf-bcee9eb04b3f",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "a9a9c698-bbb2-4b46-8d3f-8cdfd5ad005a",
              "parent_uuid": "be608747-a9d2-4963-8ad2-6e78ad8b3b64",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 7,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "186b4ac7-df04-4420-a7cd-9260cc908219",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "4"
                ]
              ],
              "innerHtml": "\r\n                    <span>Im plombierten Zustand muss die grösst mögliche Öffnung gemessen werden.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5d2ab275-c12f-4e07-ac3e-c60b6fb29a69",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>5mm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "eed7da8a-73e6-4417-b704-7a3f462df434",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; margin:0; padding: 0; "
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46996468-f1a5-4dc1-a6e8-a8a7c24a781d",
                  "parent_uuid": "eed7da8a-73e6-4417-b704-7a3f462df434",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "display: block; width: 100%; height: 100%; box-sizing: border-box; margin:0; padding:0;"
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
              "uuid": "6a4ed31a-c7c1-4372-a774-7360f19e98a2",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
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
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b0e670a8-5dbe-4d01-a390-2629a9e3bc64",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
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
            },
            {
              "uuid": "5aa15e36-3b9c-4bfd-859a-2428a2072620",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
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
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "0c0042fe-1c6b-410e-9b4b-d2d506958a8f",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
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
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "edd15c1c-f6cc-456f-ae8a-2929d0e8a3f1",
              "parent_uuid": "a7d9c27b-177b-490b-9cd8-4beb329c2e84",
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
              "sort": 7,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "5d686eaf-3e18-45e9-99c9-25c012421ac2",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51e79db6-c682-4287-874d-1a57225bfa93",
              "parent_uuid": "5d686eaf-3e18-45e9-99c9-25c012421ac2",
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
              "innerHtml": "\r\n                    <span>Auf Beschädigungen oder Defekte prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b2031b2c-1e79-4c54-8031-568d019e0d41",
              "parent_uuid": "5d686eaf-3e18-45e9-99c9-25c012421ac2",
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
              "uuid": "df5d7931-6932-41ee-85f8-48e26e562768",
              "parent_uuid": "5d686eaf-3e18-45e9-99c9-25c012421ac2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc1834a9-53d2-4564-a4d5-d317dd0be4e9",
                  "parent_uuid": "df5d7931-6932-41ee-85f8-48e26e562768",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "daec9538-7990-401b-b7e7-795836b04cb2",
              "parent_uuid": "5d686eaf-3e18-45e9-99c9-25c012421ac2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93fb117f-44cf-41ec-80c7-07502a117dcc",
                  "parent_uuid": "daec9538-7990-401b-b7e7-795836b04cb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37d970f0-e0cd-43f7-8fad-c0cf30eff575",
              "parent_uuid": "5d686eaf-3e18-45e9-99c9-25c012421ac2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04d7a9c3-e71c-4c49-9936-dea9ed971c04",
                  "parent_uuid": "37d970f0-e0cd-43f7-8fad-c0cf30eff575",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4eae5479-3b7c-479b-97ab-e4e139fc6e34",
              "parent_uuid": "5d686eaf-3e18-45e9-99c9-25c012421ac2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4298080-cb0e-4cf6-809c-54e22384db6f",
                  "parent_uuid": "4eae5479-3b7c-479b-97ab-e4e139fc6e34",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ebc7bf9a-2231-4af3-8028-160ceebf08ec",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "973e405b-f9fa-47c2-b626-080f85ba9b91",
              "parent_uuid": "ebc7bf9a-2231-4af3-8028-160ceebf08ec",
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
                  "20"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "34bca090-b6c1-4a3d-a1f4-8d4db7942005",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9ff544a0-9bd8-4a5c-9299-3756c0dfef6f",
              "parent_uuid": "34bca090-b6c1-4a3d-a1f4-8d4db7942005",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "51d0fbfd-6f28-445b-b44a-df5b9c103487",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a33ba20b-88f1-4925-a73d-cf0d71679b12",
              "parent_uuid": "51d0fbfd-6f28-445b-b44a-df5b9c103487",
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
              "innerHtml": "\r\n                    <span>Führungsschiene links / rechts fetten mit Molykote weisses Lagerfett</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a5ef0347-9aa2-49f9-a20e-4ce9ae539929",
              "parent_uuid": "51d0fbfd-6f28-445b-b44a-df5b9c103487",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2c4a8551-2f88-409c-aead-e6d50d575ca3",
              "parent_uuid": "51d0fbfd-6f28-445b-b44a-df5b9c103487",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4af4f41-bccf-4ffe-8ff7-81fa4af7f1ff",
                  "parent_uuid": "2c4a8551-2f88-409c-aead-e6d50d575ca3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "259625c9-d2e3-472f-ae26-e310ac4903af",
              "parent_uuid": "51d0fbfd-6f28-445b-b44a-df5b9c103487",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "497feb04-16c8-4402-abed-49fd57de35da",
                  "parent_uuid": "259625c9-d2e3-472f-ae26-e310ac4903af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "579778b4-e1a3-4a8b-a7e1-0b92ff3797b7",
              "parent_uuid": "51d0fbfd-6f28-445b-b44a-df5b9c103487",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8e05a18-2c18-473a-bb99-84a351ab815a",
                  "parent_uuid": "579778b4-e1a3-4a8b-a7e1-0b92ff3797b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44931c4f-0e14-4e77-8afd-184c0e7c3b36",
              "parent_uuid": "51d0fbfd-6f28-445b-b44a-df5b9c103487",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "018dfef2-2062-48b2-a0db-f9c8b12f4c1c",
                  "parent_uuid": "44931c4f-0e14-4e77-8afd-184c0e7c3b36",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "16079fd3-f0c0-475b-8b00-f9682a7f86ee",
          "parent_uuid": "758bf527-2e9b-4dbd-bff2-5524bba0c116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5911abb2-dc2f-4c3e-b575-f54bafc33023",
              "parent_uuid": "16079fd3-f0c0-475b-8b00-f9682a7f86ee",
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
              "innerHtml": "\r\n                    <span>Schieber fetten mit Molykote weisses Lagerfett</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ff329a15-8e97-4c7a-85d9-b16424b7aff0",
              "parent_uuid": "16079fd3-f0c0-475b-8b00-f9682a7f86ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a634f74e-1192-49f1-b7dc-dd6e7066b6bc",
              "parent_uuid": "16079fd3-f0c0-475b-8b00-f9682a7f86ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5040cb0c-8db0-4b1f-824e-b0fcf6c3c7e4",
                  "parent_uuid": "a634f74e-1192-49f1-b7dc-dd6e7066b6bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03597bc9-322e-4350-941e-9cd411469da5",
              "parent_uuid": "16079fd3-f0c0-475b-8b00-f9682a7f86ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41faa6c2-36fc-4c8e-8740-0ef441cdd7fc",
                  "parent_uuid": "03597bc9-322e-4350-941e-9cd411469da5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a26c0aa0-2d49-438d-ab96-1a97095044fd",
              "parent_uuid": "16079fd3-f0c0-475b-8b00-f9682a7f86ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28ba4435-267e-458e-80b8-9f3b3f65f8fa",
                  "parent_uuid": "a26c0aa0-2d49-438d-ab96-1a97095044fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7215ad76-06ec-4bcc-9210-b4a01cdff452",
              "parent_uuid": "16079fd3-f0c0-475b-8b00-f9682a7f86ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cd5858f-be3f-42cb-aee8-9d8a7f353912",
                  "parent_uuid": "7215ad76-06ec-4bcc-9210-b4a01cdff452",
                  "tagName": "input",
                  "properties": [
                    [
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
        }
      ],
      "sort": 6,
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

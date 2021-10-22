
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
  "uuid": "84576419-E652-41C5-94A2-B402215A8968",
  "parent_uuid": null,
  "tagName": "TABLE",
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
      "uuid": "3D29C714-61A4-4434-A84F-1696795D37B5",
      "parent_uuid": "84576419-E652-41C5-94A2-B402215A8968",
      "tagName": "COLGROUP",
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
      "sort": 0
    },
    {
      "uuid": "A387BE1D-A1E8-4BCA-B669-604EC6AE15E8",
      "parent_uuid": "84576419-E652-41C5-94A2-B402215A8968",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "77"
        ]
      ],
      "children": [],
      "sort": 1
    },
    {
      "uuid": "1D091D0E-4D0A-49B9-B17E-BD62FAEEC67C",
      "parent_uuid": "84576419-E652-41C5-94A2-B402215A8968",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 2
    },
    {
      "uuid": "CD811999-5103-4799-B420-65A998C211C9",
      "parent_uuid": "84576419-E652-41C5-94A2-B402215A8968",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "67"
        ]
      ],
      "children": [],
      "sort": 3
    },
    {
      "uuid": "65C6839C-F061-4825-9A15-F7B62A7A0F3F",
      "parent_uuid": "84576419-E652-41C5-94A2-B402215A8968",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "49"
        ]
      ],
      "children": [],
      "sort": 4
    },
    {
      "uuid": "23A80B44-74B5-468F-B8F2-BF2519B5DE77",
      "parent_uuid": "84576419-E652-41C5-94A2-B402215A8968",
      "tagName": "COLGROUP",
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
      "sort": 5
    },
    {
      "uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
      "parent_uuid": "84576419-E652-41C5-94A2-B402215A8968",
      "tagName": "TBODY",
      "properties": [],
      "children": [
        {
          "uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "34E26DA8-51B5-4820-8FB0-2049DF985291",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span>Datum:</span>\n                "
            },
            {
              "uuid": "B4DAD083-39D6-4D87-827B-FB2DE4D15BA0",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 1,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "661326D2-80AC-40DA-8042-320C0C65D72E",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 2,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "72E52E72-FDA3-433E-881E-27A846F4B74F",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 3,
              "innerHtml": "\n                    <span>Bargeldgewerk: Schüttgutcontainer</span>\n                "
            },
            {
              "uuid": "B0F7A062-03B8-4F24-802D-54ACDCB7D596",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 4,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "D925DE2D-A507-4946-812F-6C8698003276",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 5,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "3C607504-80C5-4697-B3F4-EEE755BD3893",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 6,
              "innerHtml": "\n                    <span>Nr.</span>\n                "
            },
            {
              "uuid": "4A74CE3C-11EC-4320-9AA1-AACFC1F31682",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 7,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "688E21D2-BFDE-4E39-A9C1-694265138A28",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 8,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "6159A190-8E45-48C8-9AFF-00C2B6C8B4EF",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 9,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "D4F6AD63-4BAB-4094-80B6-4A67DC5211F3",
              "parent_uuid": "60095773-B56A-4954-9BC1-AB671976BE76",
              "tagName": "TD",
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
              "children": [],
              "sort": 10,
              "innerHtml": "\n                    <span><br></span>\n                "
            }
          ],
          "sort": 0
        },
        {
          "uuid": "CF92EF92-2F39-4F7D-80E2-4BFF5C10BB52",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1A01ED32-0263-4708-909D-E7124A5D700E",
              "parent_uuid": "CF92EF92-2F39-4F7D-80E2-4BFF5C10BB52",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span>Wartungsfirma:</span>\n                "
            },
            {
              "uuid": "014394DA-3A31-4CA1-8A90-7006FBE2468D",
              "parent_uuid": "CF92EF92-2F39-4F7D-80E2-4BFF5C10BB52",
              "tagName": "TD",
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
              "children": [],
              "sort": 1,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "F9FC5E6E-FCAB-474D-B75C-489B89C8467F",
              "parent_uuid": "CF92EF92-2F39-4F7D-80E2-4BFF5C10BB52",
              "tagName": "TD",
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
              "children": [],
              "sort": 2,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "D166BC89-A36E-4425-804F-22ABEC3BC04B",
              "parent_uuid": "CF92EF92-2F39-4F7D-80E2-4BFF5C10BB52",
              "tagName": "TD",
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
              "children": [],
              "sort": 3,
              "innerHtml": "\n                    <span>Servicetechniker:</span>\n                "
            }
          ],
          "sort": 1
        },
        {
          "uuid": "EAF28AF4-0DBD-4462-8067-CDB5707E92CA",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "D6CFB5E1-A7C4-46F4-AB0F-71C3BCF96A12",
              "parent_uuid": "EAF28AF4-0DBD-4462-8067-CDB5707E92CA",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span class=\"blink_notme\">Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\n                "
            },
            {
              "uuid": "B67AFB41-75CE-4FC9-ACC5-C76874BC8D6F",
              "parent_uuid": "EAF28AF4-0DBD-4462-8067-CDB5707E92CA",
              "tagName": "TD",
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
              "children": [],
              "sort": 1,
              "innerHtml": "\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\n                "
            },
            {
              "uuid": "1E9860DA-83DF-4ED6-A7E2-6B817DFF6124",
              "parent_uuid": "EAF28AF4-0DBD-4462-8067-CDB5707E92CA",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "sort": 2,
              "innerHtml": "\n                    <span class=\"vert\">in Ordnung</span>\n                "
            },
            {
              "uuid": "AFCF8642-AFA1-42E2-8D29-EBD0564EA237",
              "parent_uuid": "EAF28AF4-0DBD-4462-8067-CDB5707E92CA",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "sort": 3,
              "innerHtml": "<span class=\"vert\">nicht in Ordnung</span>"
            },
            {
              "uuid": "E731D20B-4452-43EE-B02B-BC95C7CD62C0",
              "parent_uuid": "EAF28AF4-0DBD-4462-8067-CDB5707E92CA",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "sort": 4,
              "innerHtml": "<span class=\"vert\">erledigt</span>"
            },
            {
              "uuid": "49561975-F045-4A41-A052-2219BE9324D8",
              "parent_uuid": "EAF28AF4-0DBD-4462-8067-CDB5707E92CA",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "sort": 5,
              "innerHtml": "<span class=\"vert\">nicht vorhanden</span>"
            }
          ],
          "sort": 2
        },
        {
          "uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "B4E824E9-C7AE-4418-8580-1F14EEF0170E",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\n                "
            },
            {
              "uuid": "FD09EBEB-7514-442E-88C5-1DFD065745A8",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 1,
              "innerHtml": "\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\n                "
            },
            {
              "uuid": "06D7E94A-DF9D-452E-BAF5-69E6D181B0CA",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 2,
              "innerHtml": "\n                    <span style=\"color: #F2F2F2;\">Messwert</span>\n                "
            },
            {
              "uuid": "335B80CA-E84F-4647-89CB-8E98F3231599",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 3,
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "717B4715-0A85-47B4-A754-F46D52A35BA8",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 4,
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "841D8F4B-FC81-4F32-B600-4A8DA4B0D5B7",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 5,
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "476D4C00-6415-4060-939B-E054879832B5",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 6,
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "3618DB37-99B0-4972-88D1-8AC31171C7F2",
              "parent_uuid": "2DCDF9A3-7681-4190-BED2-6C575409FDAF",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "sort": 7,
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            }
          ],
          "sort": 3
        },
        {
          "uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "E93EF856-2E52-4AAD-BAC3-37F0DBB8530E",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
              "properties": [
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span>Im plombierten Zustand muss die grösst mögliche Öffnung gemessen werden.</span>\n                "
            },
            {
              "uuid": "C8E561FC-736E-445F-BCAA-712B285D5ECB",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
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
              "children": [],
              "sort": 1,
              "innerHtml": "\n                    <span>5mm</span>\n                "
            },
            {
              "uuid": "ACB75D61-0626-47B9-9814-A1FCEEA66F8A",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 2,
              "innerHtml": "\n                    <span><br></span>\n                "
            },
            {
              "uuid": "3B82A350-3798-4246-B072-CD69818422FF",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
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
              "children": [],
              "sort": 3,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "30646C81-F5DE-491B-BFF6-F1027AA140D1",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
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
              "children": [],
              "sort": 4,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "1A3D5A92-032C-4E54-BFAF-27037FA0C6BB",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
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
              "children": [],
              "sort": 5,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "885D1AE5-228E-46A3-92CB-57EB64E7C448",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
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
              "children": [],
              "sort": 6,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "FEF2DEB3-217D-46E4-B426-57E7EC8D183F",
              "parent_uuid": "471C29A1-19F8-4A80-B317-C60C85107301",
              "tagName": "TD",
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
              "children": [],
              "sort": 7,
              "innerHtml": "<span><br></span>"
            }
          ],
          "sort": 4
        },
        {
          "uuid": "0B17226E-9722-4C2E-AC50-B36EAB66E4F3",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "23F6927C-238B-432E-BF92-001A4CFDFCE2",
              "parent_uuid": "0B17226E-9722-4C2E-AC50-B36EAB66E4F3",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span>Auf Beschädigungen oder Defekte prüfen</span>\n                "
            },
            {
              "uuid": "0AC82E4C-245E-44BE-9011-C979F136CFB4",
              "parent_uuid": "0B17226E-9722-4C2E-AC50-B36EAB66E4F3",
              "tagName": "TD",
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
              "children": [],
              "sort": 1,
              "innerHtml": "\n                    <span>6M</span>\n                "
            },
            {
              "uuid": "34EE8746-C0A6-4D31-989B-0542806A855E",
              "parent_uuid": "0B17226E-9722-4C2E-AC50-B36EAB66E4F3",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 2,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "B2347B56-3255-4AA3-A97E-7644D2E85938",
              "parent_uuid": "0B17226E-9722-4C2E-AC50-B36EAB66E4F3",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 3,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "FCF18148-F73C-4F76-9AF2-380B09FF348D",
              "parent_uuid": "0B17226E-9722-4C2E-AC50-B36EAB66E4F3",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 4,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "D24B2213-6BC6-4551-97F5-A5CED3238B3C",
              "parent_uuid": "0B17226E-9722-4C2E-AC50-B36EAB66E4F3",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 5,
              "innerHtml": "<span><br></span>"
            }
          ],
          "sort": 5
        },
        {
          "uuid": "3B8AA91A-748A-42E5-8248-7F08C53509F5",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "CE2F87BE-8BCC-4FFE-9BD7-2C2065303EE9",
              "parent_uuid": "3B8AA91A-748A-42E5-8248-7F08C53509F5",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "<span><br></span>"
            }
          ],
          "sort": 6
        },
        {
          "uuid": "88D6B627-D8FC-49EE-9DAD-06D4EB96829E",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "A1961144-15B9-4290-BAE5-A28AD1B2942C",
              "parent_uuid": "88D6B627-D8FC-49EE-9DAD-06D4EB96829E",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\n                "
            }
          ],
          "sort": 7
        },
        {
          "uuid": "58AB8F24-55C1-45EF-81AA-7422CBF533A0",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "85A1E7E9-67AE-4690-BB6F-FDB711364713",
              "parent_uuid": "58AB8F24-55C1-45EF-81AA-7422CBF533A0",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span>Führungsschiene links / rechts fetten mit Molykote weisses Lagerfett</span>\n                "
            },
            {
              "uuid": "B0D63058-2A70-4764-96C6-BABFC205D775",
              "parent_uuid": "58AB8F24-55C1-45EF-81AA-7422CBF533A0",
              "tagName": "TD",
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
              "children": [],
              "sort": 1,
              "innerHtml": "\n                    <span>6M</span>\n                "
            },
            {
              "uuid": "47C646A5-892E-4E43-9D1D-6FCDD0A94971",
              "parent_uuid": "58AB8F24-55C1-45EF-81AA-7422CBF533A0",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 2,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "C326FFA9-1B8D-4F07-9EAB-A5F4CDEB7E7B",
              "parent_uuid": "58AB8F24-55C1-45EF-81AA-7422CBF533A0",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 3,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "3D7B968F-75C6-42EC-A633-9C7297E2340E",
              "parent_uuid": "58AB8F24-55C1-45EF-81AA-7422CBF533A0",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 4,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "91BA5296-51D3-4BF1-A051-3793B9B8DE3C",
              "parent_uuid": "58AB8F24-55C1-45EF-81AA-7422CBF533A0",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 5,
              "innerHtml": "<span><br></span>"
            }
          ],
          "sort": 8
        },
        {
          "uuid": "E39262A2-1055-43F1-A055-BB790F14C775",
          "parent_uuid": "8D6667A5-3CB9-4361-9030-8121FA5A9703",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "1CC50D41-DD11-4FCE-8220-49478D4E4416",
              "parent_uuid": "E39262A2-1055-43F1-A055-BB790F14C775",
              "tagName": "TD",
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
              "children": [],
              "sort": 0,
              "innerHtml": "\n                    <span>Schieber fetten mit Molykote weisses Lagerfett</span>\n                "
            },
            {
              "uuid": "0624228A-2E8C-4599-BFE3-C5A61D207459",
              "parent_uuid": "E39262A2-1055-43F1-A055-BB790F14C775",
              "tagName": "TD",
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
              "children": [],
              "sort": 1,
              "innerHtml": "\n                    <span>6M</span>\n                "
            },
            {
              "uuid": "A937FECA-87A3-4442-9FB6-2A5F97BF0064",
              "parent_uuid": "E39262A2-1055-43F1-A055-BB790F14C775",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 2,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "5E562F4B-9414-4051-9064-75F1B06DD0A9",
              "parent_uuid": "E39262A2-1055-43F1-A055-BB790F14C775",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 3,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "18C51CCD-A0AD-43DF-97E4-FD7FFA59A646",
              "parent_uuid": "E39262A2-1055-43F1-A055-BB790F14C775",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 4,
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "18A4911B-9E3B-49A9-BFB2-801A94F39281",
              "parent_uuid": "E39262A2-1055-43F1-A055-BB790F14C775",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [],
              "sort": 5,
              "innerHtml": "<span><br></span>"
            }
          ],
          "sort": 9
        }
      ],
      "sort": 6
    }
  ],
  "sort": 0
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



DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 
DELETE FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
DELETE FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 

INSERT INTO T_Checklist(CL_UID, CL_Name)
SELECT 
	 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID -- uniqueidentifier 
	,N'Testcheckliste' AS CL_Name -- nvarchar(256) 
;

INSERT INTO T_ChecklistElements(ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Level, ELE_Sort, ELE_RecSort, ELE_InnerHtml) 
SELECT 
	 uuid AS ELE_UID -- uniqueidentifier
	,parent_uuid AS ELE_Parent_UID -- uniqueidentifier
	,'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS ELE_CL_UID -- uniqueidentifier
	,tagName AS ELE_TagName -- nvarchar(256)
	,lvl AS ELE_Level -- int 
	,sort AS ELE_Sort -- int 
	,recsort AS ELE_RecSort -- varchar(max) 
	,innerHtml AS ELE_InnerHtml -- nvarchar(max)
FROM #CheckListNodes 




INSERT INTO T_Checklist_ZO_ElementProperties(PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID)
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

-- WHERE uuid = 'A1191F10-B9BC-4F51-8A07-5D59E412537F'
; 






IF OBJECT_ID(N'tempdb..#CheckListNodes') IS NOT NULL
BEGIN
	DROP TABLE #CheckListNodes; 
END


GO



DECLARE @__cl_uid uniqueidentifier; 
SET @__cl_uid = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

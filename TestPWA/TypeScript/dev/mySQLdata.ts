// checklist
// cl_id	cl_name

// checklist_elements
// ele_id	ele_parent_id	ele_cl_id	ele_tag_name	ele_innerhtml



// checklist_zo_elements_properties
// prop_id	prop_name	prop_value	prop_ele_id



// Required compatibility level
// --When DB is restored from SQL - Server < 2016
// ALTER DATABASE < DB_Name > SET COMPATIBILITY_LEVEL = 130
// ALTER DATABASE COR_Basic_Demo_V4 SET COMPATIBILITY_LEVEL = 130



let obj: any = `
DECLARE @json nvarchar(max) = N'
{
  "uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
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
      "uuid": "5FCB2552-E479-40A4-B8D2-1E3E262A874A",
      "parent_uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
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
      "children": []
    },
    {
      "uuid": "FD03244C-ABEA-492D-8824-4DD4E47F483F",
      "parent_uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "77"
        ]
      ],
      "children": []
    },
    {
      "uuid": "277E393F-0F44-4D74-A90E-731093008D0A",
      "parent_uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": []
    },
    {
      "uuid": "A7C7373F-FE2F-409F-8F54-27C23BA0D2C0",
      "parent_uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "67"
        ]
      ],
      "children": []
    },
    {
      "uuid": "00BA6972-A14F-494D-B9F5-018D31A3CD9F",
      "parent_uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
      "tagName": "COLGROUP",
      "properties": [
        [
          "width",
          "49"
        ]
      ],
      "children": []
    },
    {
      "uuid": "19F33F27-9C40-4F66-9E69-4D05173892E9",
      "parent_uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
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
      "children": []
    },
    {
      "uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
      "parent_uuid": "50CAE1C8-86D3-4F17-A37D-5F0B8AD625F3",
      "tagName": "TBODY",
      "properties": [],
      "children": [
        {
          "uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "CCEE914A-B491-4FAF-9A04-B4CE0FFEB480",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "\n                    <span>Datum:</span>\n                "
            },
            {
              "uuid": "2310DE58-6DEC-4C2D-8DC0-1229DC33269C",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "5083F6A5-93DC-4367-999E-316DDF95FA2C",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "260B06B8-9284-4057-9AD9-EE7E89F75496",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "\n                    <span>Bargeldgewerk: Schüttgutcontainer</span>\n                "
            },
            {
              "uuid": "08F969A6-C4AF-4505-8A2E-D1D3F7F6D581",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "ADE9FDF5-5825-4315-A409-0B9D56BE372B",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "E0487D02-774D-49D8-8AE4-13757966BC08",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "\n                    <span>Nr.</span>\n                "
            },
            {
              "uuid": "1777EFCA-6B87-45AB-B0E8-AD47E1577910",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "D46746A2-D1C1-4651-B908-BBB1B36676DA",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "6CB706C2-9243-43F3-810A-A7755B09259D",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "1F8162C9-EC67-42D0-B3C4-4E030510DFD3",
              "parent_uuid": "A1191F10-B9BC-4F51-8A07-5D59E412537F",
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
              "innerHtml": "\n                    <span><br></span>\n                "
            }
          ]
        },
        {
          "uuid": "1F60D839-EE5E-4675-B5FF-E786EBBAB3A1",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "63E05D87-4A97-440A-A4FD-6C08FD7ADD94",
              "parent_uuid": "1F60D839-EE5E-4675-B5FF-E786EBBAB3A1",
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
              "innerHtml": "\n                    <span>Wartungsfirma:</span>\n                "
            },
            {
              "uuid": "C1E78FD7-8E2E-42A0-B24A-A13BB8E104B6",
              "parent_uuid": "1F60D839-EE5E-4675-B5FF-E786EBBAB3A1",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "8098D8F7-ADFD-4B57-961F-14B5BF77CFCA",
              "parent_uuid": "1F60D839-EE5E-4675-B5FF-E786EBBAB3A1",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "6A689806-1CD5-4568-A54C-52E84CFF6C56",
              "parent_uuid": "1F60D839-EE5E-4675-B5FF-E786EBBAB3A1",
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
              "innerHtml": "\n                    <span>Servicetechniker:</span>\n                "
            }
          ]
        },
        {
          "uuid": "E7606C70-1734-4950-9196-5DA7C6E9A2AB",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "A8F64F35-95C0-46A4-9E12-860E8B41089F",
              "parent_uuid": "E7606C70-1734-4950-9196-5DA7C6E9A2AB",
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
              "innerHtml": "\n                    <span class=\"blink_notme\">Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\n                "
            },
            {
              "uuid": "57E73F41-851D-4875-A6A6-C04F7F421B96",
              "parent_uuid": "E7606C70-1734-4950-9196-5DA7C6E9A2AB",
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
              "innerHtml": "\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\n                "
            },
            {
              "uuid": "0AE0DB79-55DE-4EC9-B0AB-44CEFCEF1A48",
              "parent_uuid": "E7606C70-1734-4950-9196-5DA7C6E9A2AB",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "innerHtml": "\n                    <span class=\"vert\">in Ordnung</span>\n                "
            },
            {
              "uuid": "5BCF7807-CD88-4FE0-A6F2-D851C4CA7B4C",
              "parent_uuid": "E7606C70-1734-4950-9196-5DA7C6E9A2AB",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "innerHtml": "<span class=\"vert\">nicht in Ordnung</span>"
            },
            {
              "uuid": "0D590A49-97A4-4CBF-86C9-3D32A9E475B0",
              "parent_uuid": "E7606C70-1734-4950-9196-5DA7C6E9A2AB",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "innerHtml": "<span class=\"vert\">erledigt</span>"
            },
            {
              "uuid": "1D3F6A0D-36EF-402D-A786-A95018D83F57",
              "parent_uuid": "E7606C70-1734-4950-9196-5DA7C6E9A2AB",
              "tagName": "TD",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "children": [],
              "innerHtml": "<span class=\"vert\">nicht vorhanden</span>"
            }
          ]
        },
        {
          "uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "CCA02DCC-186E-47FB-A380-334D11C35D4F",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
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
              "innerHtml": "\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\n                "
            },
            {
              "uuid": "D1883A46-2EC1-4C69-A2DE-CEEA4EA474D8",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\n                "
            },
            {
              "uuid": "95D5C613-95E0-495E-8F7E-F93B8FB2128A",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "\n                    <span style=\"color: #F2F2F2;\">Messwert</span>\n                "
            },
            {
              "uuid": "2816DCBD-2D1B-4B49-A80C-B9D070ED6B42",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "0DF8D3C4-F0C7-4880-B4E1-F2ADEA6C07DF",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "6F018F8E-2B7C-4A0D-A8D0-0A39F419FC75",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "C52FCE43-46BA-46EC-B169-10CA5165467E",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            },
            {
              "uuid": "5FD5BFA7-1636-42F7-810F-D0794EBD1FBB",
              "parent_uuid": "0C123622-CA76-4FB1-A651-277A1D777332",
              "tagName": "TD",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "children": [],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>"
            }
          ]
        },
        {
          "uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "97FF39B8-F720-423B-91F1-E257BA84E084",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "\n                    <span>Im plombierten Zustand muss die grösst mögliche Öffnung gemessen werden.</span>\n                "
            },
            {
              "uuid": "386C964E-9978-4F04-9BD6-90B48784F659",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "\n                    <span>5mm</span>\n                "
            },
            {
              "uuid": "BA80297D-EF4B-402E-9C91-FCEB99D7152B",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "\n                    <span><br></span>\n                "
            },
            {
              "uuid": "4A92E8CC-5F12-4BC9-B8B8-12C50E2C40D4",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "FF462349-B56E-499D-A8E4-B520713D0B08",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "59F5FEAB-73C9-43E5-9640-70F88168A720",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "BEC308F2-0F3E-4252-A4E7-17192AEABE01",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "7FBFB07C-8D7D-4618-90AC-ABC3F0C7800E",
              "parent_uuid": "7064595C-DBB4-4FF2-BF8A-424452198A83",
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
              "innerHtml": "<span><br></span>"
            }
          ]
        },
        {
          "uuid": "0A7983A5-C04A-4A90-AA66-7CAD15B014AE",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "EE058BE9-E727-4389-B670-7A7E6D74F0F3",
              "parent_uuid": "0A7983A5-C04A-4A90-AA66-7CAD15B014AE",
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
              "innerHtml": "\n                    <span>Auf Beschädigungen oder Defekte prüfen</span>\n                "
            },
            {
              "uuid": "636D4EC5-2646-4B67-BE21-FA4EACC1454D",
              "parent_uuid": "0A7983A5-C04A-4A90-AA66-7CAD15B014AE",
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
              "innerHtml": "\n                    <span>6M</span>\n                "
            },
            {
              "uuid": "A71D6439-4ECE-4A4C-81A7-D4176F17A779",
              "parent_uuid": "0A7983A5-C04A-4A90-AA66-7CAD15B014AE",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "922EFE1C-BE78-40EB-B09A-554C5477CFFD",
              "parent_uuid": "0A7983A5-C04A-4A90-AA66-7CAD15B014AE",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "19550D7F-9C8E-4FA8-B03A-7AF87C21D980",
              "parent_uuid": "0A7983A5-C04A-4A90-AA66-7CAD15B014AE",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "FC9FB2D8-6FAA-488E-BB0E-587F62FE3CBD",
              "parent_uuid": "0A7983A5-C04A-4A90-AA66-7CAD15B014AE",
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
              "innerHtml": "<span><br></span>"
            }
          ]
        },
        {
          "uuid": "49D7C16B-46DC-4D86-9874-14D1C16D0913",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "8D3B4C56-4C49-4F91-9625-9C6B1DE926A3",
              "parent_uuid": "49D7C16B-46DC-4D86-9874-14D1C16D0913",
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
              "innerHtml": "<span><br></span>"
            }
          ]
        },
        {
          "uuid": "4223A762-DE18-4AF1-A181-F5693FF97ABC",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "F8A6B247-8236-438F-AC83-45B6CF97D440",
              "parent_uuid": "4223A762-DE18-4AF1-A181-F5693FF97ABC",
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
              "innerHtml": "\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\n                "
            }
          ]
        },
        {
          "uuid": "C7F45C3B-BDC7-47D3-A6D2-4F25ECDF2A11",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "FB225271-266F-46D2-B3E4-66BE7CB64690",
              "parent_uuid": "C7F45C3B-BDC7-47D3-A6D2-4F25ECDF2A11",
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
              "innerHtml": "\n                    <span>Führungsschiene links / rechts fetten mit Molykote weisses Lagerfett</span>\n                "
            },
            {
              "uuid": "B040B475-AF29-416D-B73F-5F29A1E82049",
              "parent_uuid": "C7F45C3B-BDC7-47D3-A6D2-4F25ECDF2A11",
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
              "innerHtml": "\n                    <span>6M</span>\n                "
            },
            {
              "uuid": "C5104193-058A-4540-BC80-5E56F8092DD8",
              "parent_uuid": "C7F45C3B-BDC7-47D3-A6D2-4F25ECDF2A11",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "28AD6435-D453-4890-A8B2-A6881463FBE7",
              "parent_uuid": "C7F45C3B-BDC7-47D3-A6D2-4F25ECDF2A11",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "3C4556A6-5DFA-4085-9051-075FF6670EAE",
              "parent_uuid": "C7F45C3B-BDC7-47D3-A6D2-4F25ECDF2A11",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "4F322B92-0BC7-4142-B618-EFE352486DAC",
              "parent_uuid": "C7F45C3B-BDC7-47D3-A6D2-4F25ECDF2A11",
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
              "innerHtml": "<span><br></span>"
            }
          ]
        },
        {
          "uuid": "4B76C630-5E9C-4BEC-B164-DB956F0510CD",
          "parent_uuid": "DE458EA6-0B92-4EFA-8A98-F148FA506C91",
          "tagName": "TR",
          "properties": [],
          "children": [
            {
              "uuid": "C87FEEB7-ACA7-47E7-A7AA-692C494C9F82",
              "parent_uuid": "4B76C630-5E9C-4BEC-B164-DB956F0510CD",
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
              "innerHtml": "\n                    <span>Schieber fetten mit Molykote weisses Lagerfett</span>\n                "
            },
            {
              "uuid": "67EB2A8F-E77F-4C6D-985A-5409F5707E39",
              "parent_uuid": "4B76C630-5E9C-4BEC-B164-DB956F0510CD",
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
              "innerHtml": "\n                    <span>6M</span>\n                "
            },
            {
              "uuid": "01319AFB-5FD0-4233-8797-B4EFB2A8B740",
              "parent_uuid": "4B76C630-5E9C-4BEC-B164-DB956F0510CD",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "8D180B12-736D-4AF6-A875-F12964152F92",
              "parent_uuid": "4B76C630-5E9C-4BEC-B164-DB956F0510CD",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "953BCA44-6C33-4FCC-9F87-FC5897D2697A",
              "parent_uuid": "4B76C630-5E9C-4BEC-B164-DB956F0510CD",
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
              "innerHtml": "<span><br></span>"
            },
            {
              "uuid": "5719B86D-19E7-4D2F-80EE-9E7C6073764A",
              "parent_uuid": "4B76C630-5E9C-4BEC-B164-DB956F0510CD",
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
              "innerHtml": "<span><br></span>"
            }
          ]
        }
      ]
    }
  ]
}'




;WITH CTE AS
(
    SELECT
         p.uuid
		,p.parent_uuid AS parent_uuid
		,p.tagName
		,p.properties
		,p.children
    FROM OPENJSON(@json, '$')
	WITH
	(
         uuid varchar(36)
		,parent_uuid varchar(36)
		,tagName nvarchar(100)
		,properties nvarchar(MAX) AS json
		,children nvarchar(MAX) AS json
    ) AS p

    UNION ALL

    SELECT
         p.uuid
		,c.uuid
		,p.tagName
		,p.properties
		,p.children
    FROM CTE AS c

    CROSS APPLY OPENJSON(c.children)
	WITH
	(
         uuid varchar(36)
		,parent_uuid varchar(36)
		,tagName nvarchar(100)
		,properties nvarchar(MAX) AS json
		,children nvarchar(MAX) AS json
    ) AS p

)
SELECT
     c.uuid
	,c.tagName
	,c.parent_uuid
	-- ,c.children
	,c.properties

	--,tProperties.*
FROM CTE AS c
/*
OUTER APPLY OPENJSON(c.properties) WITH
(
    attributeName nvarchar(MAX)  '$[0]'
   ,attributeValue nvarchar(MAX) '$[1]'
) AS tProperties
*/
-- WHERE uuid = 'A1191F10-B9BC-4F51-8A07-5D59E412537F'
`;

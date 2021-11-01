
/* 
-- How to create the XML 
DECLARE @xml XML 
SET @xml = ( SELECT ( 

SELECT * FROM T_FMS_Navigation WHERE NA_UID = '8C6C01D4-4A16-447E-A905-000000000000' 

FOR XML PATH('row'), ROOT('table'),  ELEMENTS xsinil) AS outerXml ) 
SELECT @xml 
*/ 


DECLARE @xml xml 
SET @xml = N'<?xml version="1.0" encoding="utf-16" standalone="yes"?>
<table table_schema="dbo" table_name="T_FMS_Navigation" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <row>
        <NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_UID>
        <NA_NA_UID xsi:nil="true" />
        <NA_FT_UID>0C0144B6-247F-4685-9305-8E7C0F7ED9CA</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame>mainFrame</NA_Frame>
        <NA_Image>contract.png</NA_Image>
        <NA_Link>Any_CORS.html</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
    <row>
        <NA_UID>7097E768-D9C3-48F6-9882-4D3ED4A0652B</NA_UID>
        <NA_NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_NA_UID>
        <NA_FT_UID>eb159a9c-e69f-49f4-b10e-3a4825973e46</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame xsi:nil="true" />
        <NA_Image>contract.png</NA_Image>
        <NA_Link>{@basic}Checklist2/index.htm?proc={@proc}&amp;cl_uid=EB159A9C-E69F-49F4-B10E-3A4825973E46</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
    <row>
        <NA_UID>6df056b5-24f5-4988-b5b7-462ce8d2e715</NA_UID>
        <NA_NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_NA_UID>
        <NA_FT_UID>1f6bee57-38a8-4b29-9986-bfad7d107215</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame xsi:nil="true" />
        <NA_Image>contract.png</NA_Image>
        <NA_Link>{@basic}Checklist2/index.htm?proc={@proc}&amp;cl_uid=1F6BEE57-38A8-4B29-9986-BFAD7D107215</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
    <row>
        <NA_UID>0134f896-0dfe-4b0c-aa89-c389b555b6be</NA_UID>
        <NA_NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_NA_UID>
        <NA_FT_UID>58a6d34c-2d4b-4f8a-b831-60488591aedc</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame xsi:nil="true" />
        <NA_Image>contract.png</NA_Image>
        <NA_Link>{@basic}Checklist2/index.htm?proc={@proc}&amp;cl_uid=58A6D34C-2D4B-4F8A-B831-60488591AEDC</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
    <row>
        <NA_UID>ea068c1d-eb46-45b1-b3b8-f63f5431384b</NA_UID>
        <NA_NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_NA_UID>
        <NA_FT_UID>da19d272-9439-47a7-9749-153dafab2b69</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame xsi:nil="true" />
        <NA_Image>contract.png</NA_Image>
        <NA_Link>{@basic}Checklist2/index.htm?proc={@proc}&amp;cl_uid=DA19D272-9439-47A7-9749-153DAFAB2B69</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
    <row>
        <NA_UID>4e4b83ee-6bb4-410a-a885-7b0ec9aa3a13</NA_UID>
        <NA_NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_NA_UID>
        <NA_FT_UID>698ea23d-485a-4cee-9b06-2e130a3a5626</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame xsi:nil="true" />
        <NA_Image>contract.png</NA_Image>
        <NA_Link>{@basic}Checklist2/index.htm?proc={@proc}&amp;cl_uid=698EA23D-485A-4CEE-9B06-2E130A3A5626</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
    <row>
        <NA_UID>7e6bba6c-395b-4bb3-a0c3-0e9106d7ac2d</NA_UID>
        <NA_NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_NA_UID>
        <NA_FT_UID>f1a2dd8a-2d11-496e-9b14-13559405089f</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame xsi:nil="true" />
        <NA_Image>contract.png</NA_Image>
        <NA_Link>{@basic}Checklist2/index.htm?proc={@proc}&amp;cl_uid=F1A2DD8A-2D11-496E-9B14-13559405089F</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
    <row>
        <NA_UID>103b2cc6-080d-4665-a09f-1a5e346d6004</NA_UID>
        <NA_NA_UID>6E50D12C-9E29-419E-B82F-F1040727485B</NA_NA_UID>
        <NA_FT_UID>ddada097-1bb4-46d5-9ee5-7bb28dd3201b</NA_FT_UID>
        <NA_Color>FF1C14</NA_Color>
        <NA_Frame xsi:nil="true" />
        <NA_Image>contract.png</NA_Image>
        <NA_Link>{@basic}Checklist2/index.htm?proc={@proc}&amp;cl_uid=DDADA097-1BB4-46D5-9EE5-7BB28DD3201B</NA_Link>
        <NA_NodeID xsi:nil="true" />
        <NA_ParentNodeID>coRight</NA_ParentNodeID>
        <NA_Sort>110</NA_Sort>
        <NA_Status>1</NA_Status>
        <NA_useLoading xsi:nil="true" />
        <NA_MOD_UID xsi:nil="true" />
        <NA_Guidename xsi:nil="true" />
        <NA_useList xsi:nil="true" />
        <NA_Guide_UID xsi:nil="true" />
        <NA_isDefault xsi:nil="true" />
        <NA_menuLink xsi:nil="true" />
    </row>
</table>'


DECLARE @handle int 
DECLARE @PrepareXmlStatus int 

EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, @XML 
-- EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, 'C:\Export1\med_Form.xml' 


;WITH CTE AS 
( 
    SELECT 
         tSource."NA_UID" 
        ,tSource."NA_NA_UID" 
        ,tSource."NA_FT_UID" 
        ,tSource."NA_Color" 
        ,tSource."NA_Frame" 
        ,tSource."NA_Image" 
        ,tSource."NA_Link" 
        ,tSource."NA_NodeID" 
        ,tSource."NA_ParentNodeID" 
        ,tSource."NA_Sort" 
        ,tSource."NA_Status" 
        ,tSource."NA_useLoading" 
        ,tSource."NA_MOD_UID" 
        ,tSource."NA_Guidename" 
        ,tSource."NA_useList" 
        ,tSource."NA_Guide_UID" 
        ,tSource."NA_isDefault" 
        ,tSource."NA_menuLink" 
    FROM OPENXML(@handle, '/table/row', 2) WITH 
    ( 
         "NA_UID" uniqueidentifier 'NA_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_NA_UID" uniqueidentifier 'NA_NA_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_FT_UID" uniqueidentifier 'NA_FT_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Color" national character varying(6) 'NA_Color[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Frame" national character varying(20) 'NA_Frame[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Image" national character varying(100) 'NA_Image[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Link" national character varying(400) 'NA_Link[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_NodeID" national character varying(25) 'NA_NodeID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_ParentNodeID" national character varying(25) 'NA_ParentNodeID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Sort" int 'NA_Sort[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Status" int 'NA_Status[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_useLoading" bit 'NA_useLoading[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_MOD_UID" uniqueidentifier 'NA_MOD_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Guidename" national character varying(200) 'NA_Guidename[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_useList" bit 'NA_useList[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_Guide_UID" uniqueidentifier 'NA_Guide_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_isDefault" bit 'NA_isDefault[not(@*[local-name()="nil" and . ="true"])]' 
        ,"NA_menuLink" character varying(400) 'NA_menuLink[not(@*[local-name()="nil" and . ="true"])]' 
    ) AS tSource 
    
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 
    AND 
    ( 
        tSource."NA_Guide_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Dokumente" AS tAlias000 
            WHERE (1=1) 
            AND tAlias000."DK_UID" = tSource."NA_Guide_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."NA_MOD_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_SYS_Module" AS tAlias001 
            WHERE (1=1) 
            AND tAlias001."MOD_UID" = tSource."NA_MOD_UID" 
        ) 
    ) 

) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_FMS_Navigation AS A 
USING CTE ON CTE.NA_UID = A.NA_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.NA_NA_UID = CTE.NA_NA_UID 
            ,A.NA_FT_UID = CTE.NA_FT_UID 
            ,A.NA_Color = CTE.NA_Color 
            ,A.NA_Frame = CTE.NA_Frame 
            ,A.NA_Image = CTE.NA_Image 
            ,A.NA_Link = CTE.NA_Link 
            ,A.NA_NodeID = CTE.NA_NodeID 
            ,A.NA_ParentNodeID = CTE.NA_ParentNodeID 
            ,A.NA_Sort = CTE.NA_Sort 
            ,A.NA_Status = CTE.NA_Status 
            ,A.NA_useLoading = CTE.NA_useLoading 
            ,A.NA_MOD_UID = CTE.NA_MOD_UID 
            ,A.NA_Guidename = CTE.NA_Guidename 
            ,A.NA_useList = CTE.NA_useList 
            ,A.NA_Guide_UID = CTE.NA_Guide_UID 
            ,A.NA_isDefault = CTE.NA_isDefault 
            ,A.NA_menuLink = CTE.NA_menuLink 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         NA_UID 
        ,NA_NA_UID 
        ,NA_FT_UID 
        ,NA_Color 
        ,NA_Frame 
        ,NA_Image 
        ,NA_Link 
        ,NA_NodeID 
        ,NA_ParentNodeID 
        ,NA_Sort 
        ,NA_Status 
        ,NA_useLoading 
        ,NA_MOD_UID 
        ,NA_Guidename 
        ,NA_useList 
        ,NA_Guide_UID 
        ,NA_isDefault 
        ,NA_menuLink 
    ) 
    VALUES 
    ( 
         CTE.NA_UID 
        ,CTE.NA_NA_UID 
        ,CTE.NA_FT_UID 
        ,CTE.NA_Color 
        ,CTE.NA_Frame 
        ,CTE.NA_Image 
        ,CTE.NA_Link 
        ,CTE.NA_NodeID 
        ,CTE.NA_ParentNodeID 
        ,CTE.NA_Sort 
        ,CTE.NA_Status 
        ,CTE.NA_useLoading 
        ,CTE.NA_MOD_UID 
        ,CTE.NA_Guidename 
        ,CTE.NA_useList 
        ,CTE.NA_Guide_UID 
        ,CTE.NA_isDefault 
        ,CTE.NA_menuLink 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;
 
EXEC sp_xml_removedocument @handle 

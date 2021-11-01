
/* 
-- How to create the XML 
DECLARE @xml XML 
SET @xml = ( SELECT ( 

SELECT * FROM "dbo"."T_Checklist";  

FOR XML PATH('row'), ROOT('table'),  ELEMENTS xsinil) AS outerXml ) 
SELECT @xml 
*/ 


DECLARE @xml xml 
SET @xml = N'<?xml version="1.0" encoding="utf-16" standalone="yes"?>
<table table_schema="dbo" table_name="T_Checklist" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <row>
        <CL_UID>f1a2dd8a-2d11-496e-9b14-13559405089f</CL_UID>
        <CL_Name>BPS_M7</CL_Name>
        <CL_Title>Wartungscheckliste BPS M7 500 und 1000 Stunden</CL_Title>
    </row>
    <row>
        <CL_UID>da19d272-9439-47a7-9749-153dafab2b69</CL_UID>
        <CL_Name>VHP</CL_Name>
        <CL_Title>Wartungscheckliste MUVE</CL_Title>
    </row>
    <row>
        <CL_UID>698ea23d-485a-4cee-9b06-2e130a3a5626</CL_UID>
        <CL_Name>NPL</CL_Name>
        <CL_Title>Wartungscheckliste NPL</CL_Title>
    </row>
    <row>
        <CL_UID>eb159a9c-e69f-49f4-b10e-3a4825973e46</CL_UID>
        <CL_Name>Schüttgutcontainer</CL_Name>
        <CL_Title>Wartungscheckliste MUVE</CL_Title>
    </row>
    <row>
        <CL_UID>58a6d34c-2d4b-4f8a-b831-60488591aedc</CL_UID>
        <CL_Name>CIS</CL_Name>
        <CL_Title>Wartungscheckliste MUVE</CL_Title>
    </row>
    <row>
        <CL_UID>ddada097-1bb4-46d5-9ee5-7bb28dd3201b</CL_UID>
        <CL_Name>BPS_1020</CL_Name>
        <CL_Title>Wartungscheckliste BPS 1020 500 und 1000 Stunden</CL_Title>
    </row>
    <row>
        <CL_UID>1f6bee57-38a8-4b29-9986-bfad7d107215</CL_UID>
        <CL_Name>EVA</CL_Name>
        <CL_Title>Wartungscheckliste MUVE</CL_Title>
    </row>
</table>'


DECLARE @handle int 
DECLARE @PrepareXmlStatus int 

EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, @XML 
-- EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, 'C:\Export1\med_Form.xml' 


;WITH CTE AS 
( 
    SELECT 
         tSource."CL_UID" 
        ,tSource."CL_Name" 
        ,tSource."CL_Title" 
    FROM OPENXML(@handle, '/table/row', 2) WITH 
    ( 
         "CL_UID" uniqueidentifier 'CL_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"CL_Name" national character varying(256) 'CL_Name[not(@*[local-name()="nil" and . ="true"])]' 
        ,"CL_Title" national character varying(256) 'CL_Title[not(@*[local-name()="nil" and . ="true"])]' 
    ) AS tSource 
    
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 
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
 
EXEC sp_xml_removedocument @handle 

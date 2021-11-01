
/* 
-- How to create the XML 
DECLARE @xml XML 
SET @xml = ( SELECT ( 

SELECT * FROM T_FMS_Translation WHERE FT_UID = '8c6c01d4-4a16-447e-a905-000000000000'  

FOR XML PATH('row'), ROOT('table'),  ELEMENTS xsinil) AS outerXml ) 
SELECT @xml 
*/ 


DECLARE @xml xml 
SET @xml = N'<?xml version="1.0" encoding="utf-16" standalone="yes"?>
<table table_schema="dbo" table_name="T_FMS_Translation" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <row>
        <FT_UID>0C0144B6-247F-4685-9305-8E7C0F7ED9CA</FT_UID>
        <FT_Ch>Checklischtä</FT_Ch>
        <FT_De>Checkliste</FT_De>
        <FT_En>Checklist</FT_En>
        <FT_Fr>Check-list</FT_Fr>
        <FT_It>Check list</FT_It>
        <FT_Ru>Lista di controllo</FT_Ru>
        <FT_Parameter xsi:nil="true" />
        <FT_Status>1</FT_Status>
    </row>


	<row>
        <FT_UID>f1a2dd8a-2d11-496e-9b14-13559405089f</FT_UID>
        <FT_Ch>Wartungscheckliste BPS M7 500 und 1000 Stunden</FT_Ch>
        <FT_De>Checkliste BPS_M7</FT_De>
        <FT_En>Checklist BPS_M7</FT_En>
        <FT_Fr>Check-list BPS_M7</FT_Fr>
        <FT_It>Check-list BPS_M7</FT_It>
        <FT_Ru>Check-list BPS_M7</FT_Ru>
        <FT_Parameter></FT_Parameter>
        <FT_Status>1</FT_Status>
    </row>
    <row>
        <FT_UID>da19d272-9439-47a7-9749-153dafab2b69</FT_UID>
        <FT_Ch>Wartungscheckliste MUVE</FT_Ch>
        <FT_De>Checkliste VHP</FT_De>
        <FT_En>Checklist VHP</FT_En>
        <FT_Fr>Check-list VHP</FT_Fr>
        <FT_It>Check-list VHP</FT_It>
        <FT_Ru>Check-list VHP</FT_Ru>
        <FT_Parameter></FT_Parameter>
        <FT_Status>1</FT_Status>
    </row>
    <row>
        <FT_UID>698ea23d-485a-4cee-9b06-2e130a3a5626</FT_UID>
        <FT_Ch>Wartungscheckliste NPL</FT_Ch>
        <FT_De>Checkliste NPL</FT_De>
        <FT_En>Checklist NPL</FT_En>
        <FT_Fr>Check-list NPL</FT_Fr>
        <FT_It>Check-list NPL</FT_It>
        <FT_Ru>Check-list NPL</FT_Ru>
        <FT_Parameter></FT_Parameter>
        <FT_Status>1</FT_Status>
    </row>
    <row>
        <FT_UID>eb159a9c-e69f-49f4-b10e-3a4825973e46</FT_UID>
        <FT_Ch>Wartungscheckliste MUVE</FT_Ch>
        <FT_De>Checkliste Schüttgutcontainer</FT_De>
        <FT_En>Checklist Schüttgutcontainer</FT_En>
        <FT_Fr>Check-list Schüttgutcontainer</FT_Fr>
        <FT_It>Check-list Schüttgutcontainer</FT_It>
        <FT_Ru>Check-list Schüttgutcontainer</FT_Ru>
        <FT_Parameter></FT_Parameter>
        <FT_Status>1</FT_Status>
    </row>
    <row>
        <FT_UID>58a6d34c-2d4b-4f8a-b831-60488591aedc</FT_UID>
        <FT_Ch>Wartungscheckliste MUVE</FT_Ch>
        <FT_De>Checkliste CIS</FT_De>
        <FT_En>Checklist CIS</FT_En>
        <FT_Fr>Check-list CIS</FT_Fr>
        <FT_It>Check-list CIS</FT_It>
        <FT_Ru>Check-list CIS</FT_Ru>
        <FT_Parameter></FT_Parameter>
        <FT_Status>1</FT_Status>
    </row>
    <row>
        <FT_UID>ddada097-1bb4-46d5-9ee5-7bb28dd3201b</FT_UID>
        <FT_Ch>Wartungscheckliste BPS 1020 500 und 1000 Stunden</FT_Ch>
        <FT_De>Checkliste BPS_1020</FT_De>
        <FT_En>Checklist BPS_1020</FT_En>
        <FT_Fr>Check-list BPS_1020</FT_Fr>
        <FT_It>Check-list BPS_1020</FT_It>
        <FT_Ru>Check-list BPS_1020</FT_Ru>
        <FT_Parameter></FT_Parameter>
        <FT_Status>1</FT_Status>
    </row>
    <row>
        <FT_UID>1f6bee57-38a8-4b29-9986-bfad7d107215</FT_UID>
        <FT_Ch>Wartungscheckliste MUVE</FT_Ch>
        <FT_De>Checkliste EVA</FT_De>
        <FT_En>Checklist EVA</FT_En>
        <FT_Fr>Check-list EVA</FT_Fr>
        <FT_It>Check-list EVA</FT_It>
        <FT_Ru>Check-list EVA</FT_Ru>
        <FT_Parameter></FT_Parameter>
        <FT_Status>1</FT_Status>
    </row>

</table>'


DECLARE @handle int 
DECLARE @PrepareXmlStatus int 

EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, @XML 
-- EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, 'C:\Export1\med_Form.xml' 


;WITH CTE AS 
( 
    SELECT 
         tSource."FT_UID" 
        ,tSource."FT_Ch" 
        ,tSource."FT_De" 
        ,tSource."FT_En" 
        ,tSource."FT_Fr" 
        ,tSource."FT_It" 
        ,tSource."FT_Ru" 
        ,tSource."FT_Parameter" 
        ,tSource."FT_Status" 
    FROM OPENXML(@handle, '/table/row', 2) WITH 
    ( 
         "FT_UID" uniqueidentifier 'FT_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_Ch" national character varying(200) 'FT_Ch[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_De" national character varying(200) 'FT_De[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_En" national character varying(200) 'FT_En[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_Fr" national character varying(200) 'FT_Fr[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_It" national character varying(200) 'FT_It[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_Ru" national character varying(200) 'FT_Ru[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_Parameter" national character varying(50) 'FT_Parameter[not(@*[local-name()="nil" and . ="true"])]' 
        ,"FT_Status" int 'FT_Status[not(@*[local-name()="nil" and . ="true"])]' 
    ) AS tSource 
    
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 
) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_FMS_Translation AS A 
USING CTE ON CTE.FT_UID = A.FT_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.FT_Ch = CTE.FT_Ch 
            ,A.FT_De = CTE.FT_De 
            ,A.FT_En = CTE.FT_En 
            ,A.FT_Fr = CTE.FT_Fr 
            ,A.FT_It = CTE.FT_It 
            ,A.FT_Ru = CTE.FT_Ru 
            ,A.FT_Parameter = CTE.FT_Parameter 
            ,A.FT_Status = CTE.FT_Status 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         FT_UID 
        ,FT_Ch 
        ,FT_De 
        ,FT_En 
        ,FT_Fr 
        ,FT_It 
        ,FT_Ru 
        ,FT_Parameter 
        ,FT_Status 
    ) 
    VALUES 
    ( 
         CTE.FT_UID 
        ,CTE.FT_Ch 
        ,CTE.FT_De 
        ,CTE.FT_En 
        ,CTE.FT_Fr 
        ,CTE.FT_It 
        ,CTE.FT_Ru 
        ,CTE.FT_Parameter 
        ,CTE.FT_Status 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;
 
EXEC sp_xml_removedocument @handle 

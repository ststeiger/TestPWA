
/* 
-- How to create the XML 
DECLARE @xml XML 
SET @xml = ( SELECT ( 

SELECT * FROM "dbo"."T_ChecklistVersion";  

FOR XML PATH('row'), ROOT('table'),  ELEMENTS xsinil) AS outerXml ) 
SELECT @xml 
*/ 


DECLARE @xml xml 
SET @xml = N'<?xml version="1.0" encoding="utf-16" standalone="yes"?>
<table table_schema="dbo" table_name="T_ChecklistVersion" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <row>
        <CLV_UID>6a3210f8-161f-4df5-9566-1c66bf41d61d</CLV_UID>
        <CLV_CL_UID>698ea23d-485a-4cee-9b06-2e130a3a5626</CLV_CL_UID>
        <CLV_Owner_BE_ID>12435</CLV_Owner_BE_ID>
        <CLV_Created>2021-12-06T10:29:24.237</CLV_Created>
        <CLV_Obsoleted>2999-12-31T00:00:00.000</CLV_Obsoleted>
    </row>
    <row>
        <CLV_UID>11109e12-7b76-4b60-9168-42fc41d28383</CLV_UID>
        <CLV_CL_UID>1f6bee57-38a8-4b29-9986-bfad7d107215</CLV_CL_UID>
        <CLV_Owner_BE_ID>12435</CLV_Owner_BE_ID>
        <CLV_Created>2021-12-06T10:29:24.237</CLV_Created>
        <CLV_Obsoleted>2999-12-31T00:00:00.000</CLV_Obsoleted>
    </row>
    <row>
        <CLV_UID>fa28e4d1-e505-4c54-9305-52d526dd0d70</CLV_UID>
        <CLV_CL_UID>ddada097-1bb4-46d5-9ee5-7bb28dd3201b</CLV_CL_UID>
        <CLV_Owner_BE_ID>12435</CLV_Owner_BE_ID>
        <CLV_Created>2021-12-06T10:29:24.237</CLV_Created>
        <CLV_Obsoleted>2999-12-31T00:00:00.000</CLV_Obsoleted>
    </row>
    <row>
        <CLV_UID>7f973e2d-5beb-4e0f-932e-642cb936e7b6</CLV_UID>
        <CLV_CL_UID>58a6d34c-2d4b-4f8a-b831-60488591aedc</CLV_CL_UID>
        <CLV_Owner_BE_ID>12435</CLV_Owner_BE_ID>
        <CLV_Created>2021-12-06T10:29:24.237</CLV_Created>
        <CLV_Obsoleted>2999-12-31T00:00:00.000</CLV_Obsoleted>
    </row>
    <row>
        <CLV_UID>08796354-f7aa-4edf-b943-a51f7afdad1d</CLV_UID>
        <CLV_CL_UID>eb159a9c-e69f-49f4-b10e-3a4825973e46</CLV_CL_UID>
        <CLV_Owner_BE_ID>12435</CLV_Owner_BE_ID>
        <CLV_Created>2021-12-06T10:29:24.237</CLV_Created>
        <CLV_Obsoleted>2999-12-31T00:00:00.000</CLV_Obsoleted>
    </row>
    <row>
        <CLV_UID>26456198-0699-4718-aaf7-b8119be9d705</CLV_UID>
        <CLV_CL_UID>f1a2dd8a-2d11-496e-9b14-13559405089f</CLV_CL_UID>
        <CLV_Owner_BE_ID>12435</CLV_Owner_BE_ID>
        <CLV_Created>2021-12-06T10:29:24.237</CLV_Created>
        <CLV_Obsoleted>2999-12-31T00:00:00.000</CLV_Obsoleted>
    </row>
    <row>
        <CLV_UID>e4fd4412-523c-41f0-9cdf-ffb3e5638c3c</CLV_UID>
        <CLV_CL_UID>da19d272-9439-47a7-9749-153dafab2b69</CLV_CL_UID>
        <CLV_Owner_BE_ID>12435</CLV_Owner_BE_ID>
        <CLV_Created>2021-12-06T10:29:24.237</CLV_Created>
        <CLV_Obsoleted>2999-12-31T00:00:00.000</CLV_Obsoleted>
    </row>
</table>'


DECLARE @handle int 
DECLARE @PrepareXmlStatus int 

EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, @XML 
-- EXEC @PrepareXmlStatus = sp_xml_preparedocument @handle OUTPUT, 'C:\Export1\med_Form.xml' 


;WITH CTE AS 
( 
    SELECT 
         tSource."CLV_UID" 
        ,tSource."CLV_CL_UID" 
        ,tSource."CLV_Owner_BE_ID" 
        ,tSource."CLV_Created" 
        ,tSource."CLV_Obsoleted" 
    FROM OPENXML(@handle, '/table/row', 2) WITH 
    ( 
         "CLV_UID" uniqueidentifier 'CLV_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"CLV_CL_UID" uniqueidentifier 'CLV_CL_UID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"CLV_Owner_BE_ID" int 'CLV_Owner_BE_ID[not(@*[local-name()="nil" and . ="true"])]' 
        ,"CLV_Created" datetime 'CLV_Created[not(@*[local-name()="nil" and . ="true"])]' 
        ,"CLV_Obsoleted" datetime 'CLV_Obsoleted[not(@*[local-name()="nil" and . ="true"])]' 
    ) AS tSource 
    
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 
    AND 
    ( 
        tSource."CLV_Owner_BE_ID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_Benutzer" AS tAlias000 
            WHERE (1=1) 
            AND tAlias000."BE_ID" = tSource."CLV_Owner_BE_ID" 
        ) 
    ) 

    AND 
    ( 
        tSource."CLV_CL_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_Checklist" AS tAlias001 
            WHERE (1=1) 
            AND tAlias001."CL_UID" = tSource."CLV_CL_UID" 
        ) 
    ) 

) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_ChecklistVersion AS A 
USING CTE ON CTE.CLV_UID = A.CLV_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.CLV_CL_UID = CTE.CLV_CL_UID 
            ,A.CLV_Owner_BE_ID = CTE.CLV_Owner_BE_ID 
            ,A.CLV_Created = CTE.CLV_Created 
            ,A.CLV_Obsoleted = CTE.CLV_Obsoleted 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         CLV_UID 
        ,CLV_CL_UID 
        ,CLV_Owner_BE_ID 
        ,CLV_Created 
        ,CLV_Obsoleted 
    ) 
    VALUES 
    ( 
         CTE.CLV_UID 
        ,CTE.CLV_CL_UID 
        ,CTE.CLV_Owner_BE_ID 
        ,CTE.CLV_Created 
        ,CTE.CLV_Obsoleted 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;
 
EXEC sp_xml_removedocument @handle 

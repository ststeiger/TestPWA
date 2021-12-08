
;WITH CTE AS 
( 
    SELECT 
         tSource."REG_UID" 
        ,tSource."REG_REG_UID" 
        ,tSource."REG_MOD_UID" 
		 
        ,tSource."REG_Code" 
		 
        ,tSource."REG_LANG_DE" 
        ,tSource."REG_LANG_EN" 
        ,tSource."REG_LANG_FR" 
        ,tSource."REG_LANG_IT" 
		 
        ,tSource."REG_Control" 
        ,tSource."REG_Show" 
        ,tSource."REG_Status" 
        ,tSource."REG_Sort" 
        ,tSource."REG_usesMetadata" 
	FROM 
		( 
			SELECT 
				 '75B859DB-65A0-4E6C-8D8D-FECFF83A4773' AS REG_UID 
				,NULL AS REG_REG_UID 
				,NULL AS REG_MOD_UID 
				,'CHKL2' AS REG_Code 
				,'Checkliste 2' AS REG_LANG_DE 
				,'Checklist 2' AS REG_LANG_EN 
				,'Liste de contrôle 2' AS REG_LANG_FR 
				,'Lista di controllo 2' AS REG_LANG_IT 
				-- ,'~/templates/forms/iframe.ascx?src=Checklist2/debug.htm' AS REG_Control 
                ,'~/templates/forms/iframe.ascx?src={@basic}Checklist2/debug.htm' AS REG_Control 
				,1 AS REG_Show 
				,1 AS REG_Status 
				,31 AS REG_Sort 
				,0 AS REG_usesMetadata 
		) AS tSource 
    
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 
    AND 
    ( 
        tSource."REG_MOD_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_SYS_Module" AS tAlias000 
            WHERE (1=1) 
            AND tAlias000."MOD_UID" = tSource."REG_MOD_UID" 
        ) 
    ) 

) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_SYS_Ref_Register AS A 
USING CTE ON CTE.REG_UID = A.REG_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.REG_REG_UID = CTE.REG_REG_UID 
            ,A.REG_MOD_UID = CTE.REG_MOD_UID 
            ,A.REG_Code = CTE.REG_Code 
            ,A.REG_LANG_DE = CTE.REG_LANG_DE 
            ,A.REG_LANG_EN = CTE.REG_LANG_EN 
            ,A.REG_LANG_FR = CTE.REG_LANG_FR 
            ,A.REG_LANG_IT = CTE.REG_LANG_IT 
            ,A.REG_Control = CTE.REG_Control 
            ,A.REG_Show = CTE.REG_Show 
            ,A.REG_Status = CTE.REG_Status 
            ,A.REG_Sort = CTE.REG_Sort 
            ,A.REG_usesMetadata = CTE.REG_usesMetadata 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         REG_UID 
        ,REG_REG_UID 
        ,REG_MOD_UID 
        ,REG_Code 
        ,REG_LANG_DE 
        ,REG_LANG_EN 
        ,REG_LANG_FR 
        ,REG_LANG_IT 
        ,REG_Control 
        ,REG_Show 
        ,REG_Status 
        ,REG_Sort 
        ,REG_usesMetadata 
    ) 
    VALUES 
    ( 
         CTE.REG_UID 
        ,CTE.REG_REG_UID 
        ,CTE.REG_MOD_UID 
        ,CTE.REG_Code 
        ,CTE.REG_LANG_DE 
        ,CTE.REG_LANG_EN 
        ,CTE.REG_LANG_FR 
        ,CTE.REG_LANG_IT 
        ,CTE.REG_Control 
        ,CTE.REG_Show 
        ,CTE.REG_Status 
        ,CTE.REG_Sort 
        ,CTE.REG_usesMetadata 
    ) 
-- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;

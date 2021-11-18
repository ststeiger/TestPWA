
;WITH CTE AS 
( 
    SELECT 
         tSource."REGR_UID" 
        ,tSource."REGR_GRANTEE_ID" 
        ,tSource."REGR_REG_UID" 
        ,tSource."REGR_IsRead" 
        ,tSource."REGR_Status" 
        ,tSource."REGR_MDT_ID" 
    FROM 
    ( 
		SELECT 
			 NEWID() AS REGR_UID
			,T_Benutzergruppen.ID AS REGR_GRANTEE_ID
			,'75B859DB-65A0-4E6C-8D8D-FECFF83A4773' AS REGR_REG_UID
			,1 AS REGR_IsRead
			,1 AS REGR_Status
			,0 AS REGR_MDT_ID
		FROM 
		(
			SELECT * FROM T_Benutzergruppen 
			WHERE Name IN ('Administratoren', 'Power-User')
		) AS T_Benutzergruppen 
	) AS tSource 
    
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 
    AND 
    ( 
        tSource."REGR_MDT_ID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Ref_Mandant" AS tAlias000 
            WHERE (1=1) 
            AND tAlias000."MDT_ID" = tSource."REGR_MDT_ID" 
        ) 
    ) 
	
    AND 
    ( 
        tSource."REGR_REG_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_SYS_Ref_Register" AS tAlias001 
            WHERE (1=1) 
            AND tAlias001."REG_UID" = tSource."REGR_REG_UID" 
        ) 
    ) 

) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_SYS_Registerrechte AS A 
USING CTE ON CTE.REGR_GRANTEE_ID = A.REGR_GRANTEE_ID AND CTE.REGR_REG_UID = A.REGR_REG_UID AND A.REGR_Status = CTE.REGR_Status 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.REGR_IsRead = CTE.REGR_IsRead 
            ,A.REGR_MDT_ID = CTE.REGR_MDT_ID 
			 
WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         REGR_UID 
        ,REGR_GRANTEE_ID 
        ,REGR_REG_UID 
        ,REGR_IsRead 
        ,REGR_Status 
        ,REGR_MDT_ID 
    ) 
    VALUES 
    ( 
         CTE.REGR_UID 
        ,CTE.REGR_GRANTEE_ID 
        ,CTE.REGR_REG_UID 
        ,CTE.REGR_IsRead 
        ,CTE.REGR_Status 
        ,CTE.REGR_MDT_ID 
    ) 
-- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;

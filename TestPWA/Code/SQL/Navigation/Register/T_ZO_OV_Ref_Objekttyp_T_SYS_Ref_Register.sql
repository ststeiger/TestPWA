
;WITH CTE AS 
( 
    SELECT 
         tSource.ZO_OBJTREG_UID 
        ,tSource.ZO_OBJTREG_OBJT_UID 
        ,tSource.ZO_OBJTREG_REG_UID 
        ,tSource.ZO_OBJTREG_Status 
	FROM 
		( 
			SELECT 
				 '5A6E4FFF-EC98-4F2B-AD4E-697853084044' AS ZO_OBJTREG_UID 
				,tObjektTyp.OBJT_UID AS ZO_OBJTREG_OBJT_UID 
				,'75B859DB-65A0-4E6C-8D8D-FECFF83A4773' AS ZO_OBJTREG_REG_UID 
				,1 AS ZO_OBJTREG_Status 
			FROM 
			(
				SELECT TOP 1 OBJT_UID FROM T_OV_Ref_ObjektTyp WHERE OBJT_Status = 1 AND OBJT_Lang_DE = 'Standort' 
				-- SELECT TOP 1 OBJT_UID FROM T_OV_Ref_ObjektTyp WHERE OBJT_Status = 1 AND OBJT_Lang_DE = 'Task' 
			) AS tObjektTyp 
		) AS tSource 
    
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 
    AND 
    ( 
        tSource.ZO_OBJTREG_REG_UID IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo".T_SYS_Ref_Register AS tAlias000 
            WHERE (1=1) 
            AND tAlias000."REG_UID" = tSource.ZO_OBJTREG_REG_UID 
        ) 
    ) 

) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register AS A 
USING CTE ON CTE.ZO_OBJTREG_UID = A.ZO_OBJTREG_UID 
WHEN MATCHED THEN 
	UPDATE 
	   SET A.ZO_OBJTREG_OBJT_UID = CTE.ZO_OBJTREG_OBJT_UID 
		  ,A.ZO_OBJTREG_REG_UID = CTE.ZO_OBJTREG_REG_UID 
		  ,A.ZO_OBJTREG_Status = CTE.ZO_OBJTREG_Status 


WHEN NOT MATCHED BY TARGET THEN 

	INSERT 
	(
		 ZO_OBJTREG_UID
		,ZO_OBJTREG_OBJT_UID
		,ZO_OBJTREG_REG_UID
		,ZO_OBJTREG_Status
	)
	VALUES
	(
		 CTE.ZO_OBJTREG_UID
		,CTE.ZO_OBJTREG_OBJT_UID
		,CTE.ZO_OBJTREG_REG_UID
		,CTE.ZO_OBJTREG_Status
	)

-- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;

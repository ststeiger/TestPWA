
;WITH CTE AS 
( 
	SELECT 
		 NEWID() AS NAR_UID 
		,ID AS NAR_GRANTEE_ID 
		,NA_UID AS NAR_NA_UID 
		,1 AS NAR_IsRead 
		,1 AS NAR_Status 
		,0 AS NAR_MDT_ID 
	FROM 
	(
		SELECT * FROM T_FMS_Navigation 
		WHERE NA_UID IN 
		( 
			 '6E50D12C-9E29-419E-B82F-F1040727485B'
			,'7097E768-D9C3-48F6-9882-4D3ED4A0652B'
			,'6DF056B5-24F5-4988-B5B7-462CE8D2E715'
			,'0134F896-0DFE-4B0C-AA89-C389B555B6BE'
			,'EA068C1D-EB46-45B1-B3B8-F63F5431384B'
			,'4E4B83EE-6BB4-410A-A885-7B0EC9AA3A13'
			,'7E6BBA6C-395B-4BB3-A0C3-0E9106D7AC2D'
			,'103B2CC6-080D-4665-A09F-1A5E346D6004'

		) 
	) AS T_FMS_Navigation 

	CROSS JOIN 
		(
			SELECT * FROM T_Benutzergruppen WHERE Name = 'Administratoren' 
		) AS T_Benutzergruppen 
) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_SYS_Navigationrechte AS A 
USING CTE ON CTE.NAR_UID = A.NAR_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.NAR_GRANTEE_ID = CTE.NAR_GRANTEE_ID 
            ,A.NAR_NA_UID = CTE.NAR_NA_UID 
            ,A.NAR_IsRead = CTE.NAR_IsRead 
            ,A.NAR_Status = CTE.NAR_Status 
            ,A.NAR_MDT_ID = CTE.NAR_MDT_ID 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         NAR_UID 
        ,NAR_GRANTEE_ID 
        ,NAR_NA_UID 
        ,NAR_IsRead 
        ,NAR_Status 
        ,NAR_MDT_ID 
    ) 
    VALUES 
    ( 
         CTE.NAR_UID 
        ,CTE.NAR_GRANTEE_ID 
        ,CTE.NAR_NA_UID 
        ,CTE.NAR_IsRead 
        ,CTE.NAR_Status 
        ,CTE.NAR_MDT_ID 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;

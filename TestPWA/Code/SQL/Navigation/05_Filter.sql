
DELETE FROM T_FMS_ZO_Filter_Dependency WHERE FD_FI_UID_Parent IN 
(
	SELECT FI_UID FROM T_FMS_ZO_Filter 
	WHERE FI_NA_UID IN 
	(
		SELECT NA_UID  
		FROM T_FMS_Navigation 
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
	)
); 





DELETE FROM T_FMS_ZO_Filter 
WHERE FI_NA_UID IN 
(
	SELECT NA_UID  
	FROM T_FMS_Navigation 
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
); 




DECLARE @foo TABLE 
(
	FI_UID uniqueidentifier NOT NULL PRIMARY KEY,
	FI_FI_UID uniqueidentifier NOT NULL,
	FI_FT_UID_Tooltip uniqueidentifier NULL,
	FI_FT_UID_Placeholder uniqueidentifier NULL,
	FI_NA_UID uniqueidentifier NOT NULL,
	FI_DefaultValue nvarchar(100) NULL,
	FI_useCookie bit NULL,
	FI_isReadonly bit NULL,
	FI_multipleSelect bit NULL,
	FI_SQLFilename nvarchar(100) NULL,
	FI_LoadOnEmptyParent bit NULL,
	FI_hasEmpty bit NOT NULL,
	FI_Sort int NULL,
	FI_FI_FT_UID uniqueidentifier NULL,
	FI_FT_UID uniqueidentifier NULL,
	old_FI_UID uniqueidentifier NOT NULL 
);



-- INSERT INTO T_FMS_ZO_Filter 
INSERT INTO @foo 
(
	 FI_UID 
	,FI_FI_UID 
	,FI_FT_UID_Tooltip 
	,FI_FT_UID_Placeholder 
	,FI_NA_UID 
	,FI_DefaultValue 
	,FI_useCookie 
	,FI_isReadonly 
	,FI_multipleSelect 
	,FI_SQLFilename 
	,FI_LoadOnEmptyParent 
	,FI_hasEmpty 
	,FI_Sort
	,FI_FI_FT_UID 
	,FI_FT_UID 
	,old_FI_UID 
) 
SELECT 
	 NEWID() AS FI_UID 
	,FI_FI_UID 
	,FI_FT_UID_Tooltip 
	,FI_FT_UID_Placeholder 
	,T_FMS_Navigation.NA_UID AS FI_NA_UID 
	,FI_DefaultValue 
	,FI_useCookie 
	,FI_isReadonly 
	,FI_multipleSelect 
	,FI_SQLFilename 
	,FI_LoadOnEmptyParent 
	,FI_hasEmpty 
	,FI_Sort 
	,FI_FI_FT_UID 
	,FI_FT_UID 
	,FI_UID AS old_FI_UID 
FROM T_FMS_ZO_Filter 

CROSS APPLY 
	(
		SELECT NA_UID  
		FROM T_FMS_Navigation 
		WHERE NA_UID IN 
		( 
			 -- '6E50D12C-9E29-419E-B82F-F1040727485B',  
			 '7097E768-D9C3-48F6-9882-4D3ED4A0652B' 
			,'6DF056B5-24F5-4988-B5B7-462CE8D2E715' 
			,'0134F896-0DFE-4B0C-AA89-C389B555B6BE' 
			,'EA068C1D-EB46-45B1-B3B8-F63F5431384B' 
			,'4E4B83EE-6BB4-410A-A885-7B0EC9AA3A13' 
			,'7E6BBA6C-395B-4BB3-A0C3-0E9106D7AC2D' 
			,'103B2CC6-080D-4665-A09F-1A5E346D6004' 
		) 
	) AS T_FMS_Navigation 

WHERE (1=1) 
AND FI_NA_UID = '064F93C4-CA21-473C-0000-000000000200' 




INSERT INTO T_FMS_ZO_Filter 
(
	 FI_UID 
	,FI_FI_UID 
	,FI_FT_UID_Tooltip 
	,FI_FT_UID_Placeholder 
	,FI_NA_UID 
	,FI_DefaultValue 
	,FI_useCookie 
	,FI_isReadonly 
	,FI_multipleSelect 
	,FI_SQLFilename 
	,FI_LoadOnEmptyParent 
	,FI_hasEmpty 
	,FI_Sort
	,FI_FI_FT_UID 
	,FI_FT_UID 
) 
SELECT 
	 FI_UID 
	,FI_FI_UID 
	,FI_FT_UID_Tooltip 
	,FI_FT_UID_Placeholder 
	,FI_NA_UID 
	,FI_DefaultValue 
	,FI_useCookie 
	,FI_isReadonly 
	,FI_multipleSelect 
	,FI_SQLFilename 
	,FI_LoadOnEmptyParent 
	,FI_hasEmpty 
	,FI_Sort 
	,FI_FI_FT_UID 
	,FI_FT_UID 
FROM @foo 





-- SELECT * FROM @foo


INSERT INTO T_FMS_ZO_Filter_Dependency(FD_UID, FD_FI_UID_Parent, FD_FI_UID_Child, FD_Sort)
SELECT 
	 NEWID() AS FD_UID 
	,tNewParentUid.FI_UID AS FD_FI_UID_Parent 
	,tNewChildUid.FI_UID AS FD_FI_UID_Child 
	,FD_Sort 
FROM T_FMS_ZO_Filter_Dependency 

LEFT JOIN @foo AS tNewParentUid 
	ON tNewParentUid.old_FI_UID = FD_FI_UID_Parent

LEFT JOIN @foo AS tNewChildUid 
	ON tNewChildUid.old_FI_UID = FD_FI_UID_Child

WHERE FD_FI_UID_Parent IN (SELECT old_FI_UID FROM @foo)

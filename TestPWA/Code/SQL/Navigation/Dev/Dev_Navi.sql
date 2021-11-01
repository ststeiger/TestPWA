


-- ~/Checklist2/checkliste.htm
-- http://localhost:3830/COR-Basic/Checklist2/index.htm
-- http://localhost:3830/COR-Basic/Checklist2/index.htm


SELECT 
	 T_FMS_Translation.FT_De 
	,T_SYS_Module.MOD_Modul 
	 
	,NA_UID 
	,T_FMS_Navigation.NA_Link 
	,T_FMS_Navigation.NA_Frame 
	,T_FMS_Navigation.NA_NodeID 
	,T_FMS_Navigation.NA_ParentNodeID 
	-- ,T_FMS_Navigation.* 
FROM T_FMS_Navigation 
LEFT JOIN T_FMS_Translation ON T_FMS_Translation.FT_UID = T_FMS_Navigation.NA_FT_UID 
LEFT JOIN T_SYS_Module ON T_SYS_Module.MOD_UID = T_FMS_Navigation.NA_MOD_UID 
-- WHERE T_FMS_Navigation.NA_NA_UID IS NULL 
-- WHERE T_FMS_Navigation.NA_NA_UID = 'F0000000-E000-0000-0000-000000000002' 
-- WHERE T_FMS_Navigation.NA_NA_UID IS NOT NULL 
WHERE NA_UID = 'C69713AC-0F7A-4383-0200-000000000000' 

-- AND NA_Link = 'Any_CORS.html' 


SELECT FT_UID, FT_DE, FT_Parameter FROM T_FMS_Translation WHERE FT_Status = 1 -- AND NULLIF(FT_Parameter, '') IS NOT NULL 

SELECT * FROM T_FMS_Navigation WHERE NA_UID = '8C6C01D4-4A16-447E-A905-000000000000'
SELECT * FROM T_FMS_Translation WHERE FT_UID = '8c6c01d4-4a16-447e-a905-000000000000' 

SELECT 
	 T_FMS_Translation.FT_DE 
	,FiltTrans.FT_DE 
	,T_SYS_Module.MOD_Modul 
	,T_FMS_Navigation.NA_UID  
	,T_FMS_Navigation.NA_Link 
	-- ,T_FMS_ZO_Filter.FI_FI_UID
	,T_FMS_Filter.* 
FROM T_FMS_Navigation 
LEFT JOIN T_FMS_Translation ON T_FMS_Translation.FT_UID = T_FMS_Navigation.NA_FT_UID 
LEFT JOIN T_SYS_Module ON T_SYS_Module.MOD_UID = T_FMS_Navigation.NA_MOD_UID 

LEFT JOIN T_FMS_ZO_Filter ON T_FMS_ZO_Filter.FI_NA_UID = T_FMS_Navigation.NA_UID 
LEFT JOIN T_FMS_Filter ON T_FMS_Filter.FI_UID = T_FMS_ZO_Filter.FI_FI_UID 
LEFT JOIN T_FMS_Translation AS FiltTrans ON FiltTrans.FT_UID = T_FMS_Filter.FI_FT_UID 

WHERE (1=1) 
-- AND T_FMS_Translation.FT_DE = 'Objekte' 
AND T_FMS_Navigation.NA_NA_UID = 'F1000000-E000-0000-0000-000000000004' -- Objekte V4 
AND T_FMS_Navigation.NA_UID = 'F1000000-E000-0004-0000-000000000001' -- Übersicht 


-- SELECT * FROM T_FMS_ZO_Filter WHERE FI_NA_UID = '064F93C4-CA21-473C-0000-000000000200' 




SELECT  
	 T_AP_Anlage.AL_UID 
	,T_AP_Anlage.AL_AK_UID 
	,T_AP_Anlage.AL_Nr 
	,T_AP_Anlage.AL_Name 
	,T_AP_Anlage.AL_NR_Intern 
	,T_AP_Anlage._AL_Label 
	 
	,T_AP_Anlage.AL_Hersteller 
	,T_AP_Anlage.AL_Typ 
	 
	,T_AP_Anlage.AL_SO_UID 
	,T_AP_Anlage.AL_GB_UID 
	,T_AP_Anlage.AL_GS_UID 
FROM T_AP_Anlage 
LEFT JOIN T_AP_Raum ON T_AP_Raum.RM_UID = T_AP_Anlage.AL_RM_UID 
LEFT JOIN T_AP_Geschoss ON T_AP_Geschoss.GS_UID = T_AP_Anlage.AL_GS_UID OR T_AP_Geschoss.GS_UID = T_AP_Raum.RM_GS_UID 
LEFT JOIN T_AP_Gebaeude ON T_AP_Gebaeude.GB_UID = T_AP_Anlage.AL_GB_UID OR T_AP_Gebaeude.GB_UID = T_AP_Geschoss.GS_GB_UID 
LEFT JOIN T_AP_Standort ON T_AP_Standort.SO_UID = T_AP_Anlage.AL_SO_UID OR SO_UID = T_AP_Gebaeude.GB_SO_UID 

WHERE T_AP_Anlage.AL_Status = 1 
AND CURRENT_TIMESTAMP BETWEEN T_AP_Anlage.AL_DatumVon AND T_AP_Anlage.AL_DatumBis 
AND T_AP_Anlage.AL_AL_UID IS NULL 


-- SELECT * FROM T_FMS_ZO_Filter 
-- SELECT * FROM T_FMS_Filter 




-- AND FiltTrans.FT_DE IN ('-- alle Orte --', '-- alle Standorte --' , '-- alle Gebäude --', '-- alle Trakte --', '-- alle Geschosse --', '-- alle Räume --')




-- SELECT * FROM T_FMS_Filter 
-- LEFT JOIN T_FMS_Translation AS FiltTrans ON FiltTrans.FT_UID = T_FMS_Filter.FI_FT_UID
-- WHERE FT_DE LIKE '%anlag%'



-- Mi. Quellwolf 24.11 15:30-15:45



-- SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_NAME LIKE '%filter%' 

SELECT * FROM T_FMS_ZO_Filter_Dependency 


SELECT * FROM T_FMS_ZO_Filter 


-- Portal\Resources\Queries\Mandant-Nr \Filter.Taskmanagement.FI_Year.sql
SELECT * FROM T_FMS_Filter 
LEFT JOIN T_FMS_Translation ON FT_UID = FI_FT_UID 



SELECT * FROM T_FMS_ZO_Filter WHERE FI_NA_UID = 'F1000000-E000-0000-0000-000000000004' 



SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA	= 'dbo' AND TABLE_NAME LIKE 'T_ %' AND COLUMN_NAME LIKE '%FI_UID%' 


SELECT * FROM V_DELDATA_ForeignKeyRelations WHERE 'T_FMS_Filter' IN (FK_TABLE_NAME, REFERENCED_TABLE_NAME) 

SELECT * FROM V_DELDATA_ForeignKeyRelations WHERE 'T_FMS_ZO_Filter_Dependency' IN (FK_TABLE_NAME, REFERENCED_TABLE_NAME) 

SELECT * FROM V_DELDATA_ForeignKeyRelations WHERE 'T_FMS_ZO_Filter' IN (FK_TABLE_NAME, REFERENCED_TABLE_NAME) 



DECLARE @in_stichtag datetime 
SET @in_stichtag = CURRENT_TIMESTAMP 

SELECT 
	 T_VWS_SVGElement.SVE_UID 
	,T_VWS_SVGElement.SVE_dateCreated 
	,T_VWS_SVGElement.SVE_dateDeleted 
	,T_VWS_SVGElement.SVE_OBJ_UID
	,T_VWS_SVGElement.SVE_OBJT_Code 
	,T_AP_Ref_Kostenstelle.KST_Kurz_DE 
	,T_AP_Ref_Kostenstelle.KST_Lang_DE 
	,KM_UID  
	,KM_Nr 
	,KM_Rufnummer 
	,KM_ZN_UID 

	,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumVon 
	,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumBis 
	,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_Status 
FROM T_VWS_SVGElement 

LEFT JOIN T_AP_Kommunikation
	ON T_AP_Kommunikation.KM_UID = SVE_OBJ_UID 
	AND T_AP_Kommunikation.KM_Status = 1 
	-- AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Kommunikation.KM_DatumVon AS float)) AND CAST(T_AP_Kommunikation.KM_DatumBis AS float)
	
LEFT JOIN T_AP_Zone 
	ON T_AP_Zone.ZN_UID = T_AP_Kommunikation.KM_ZN_UID

LEFT JOIN T_ZO_AP_Zone_AP_Ref_Kostenstelle
	ON T_AP_Zone.ZN_UID = T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_ZN_UID
	--AND T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_Status = 1 
	-- AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumVon AS float)) AND CAST(T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumBis AS float)
	
LEFT JOIN T_AP_Ref_Kostenstelle
	ON T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_KST_UID = T_AP_Ref_Kostenstelle.KST_UID
	--AND T_AP_Ref_Kostenstelle.KST_Status = 1

-- WHERE SVE_OBJT_Code NOT IN ('GB', 'GS', 'AP', 'DO', 'SH', 'MO', 'IN', 'PP', 'RM', 'ZN', 'TR', 'KM')
WHERE (1=1) 
AND SVE_SVG_UID = '0162B32C-142F-4B2D-954D-E897377D9FB6' 
AND SVE_OBJT_Code = 'KM' 
AND SVE_dateDeleted IS NULL
-- AND KST_Lang_DE = 'Measurem. & Config. Systems' 

--------- AND KM_Rufnummer = '6042' -- falsch - Zone auf Kommunikation nicht eingetragen - 1416A10F-7C6E-478B-AB5A-3EF0C41DCB39 füv 6042
-- AND KM_Rufnummer = '6248' -- OK 
-- AND KM_Rufnummer = '6215' -- OK 
-- AND KM_Rufnummer = '1096240' -- OK 
-- AND KM_Rufnummer = '6246' -- OK 
-- AND KM_Rufnummer = '6217' -- OK 
-- AND KM_Rufnummer = '6242' -- OK 
-- AND KM_Rufnummer = '6247' -- OK 
-- AND KM_Rufnummer = '6243' -- OK 
-- AND KM_Rufnummer = '6219' -- OK 
-- AND KM_Rufnummer = '' -- OK 
-- AND KM_Rufnummer = '6244' -- OK 
-- AND KM_Rufnummer = '6259' -- OK 
---------AND KM_Rufnummer = '6301' -- FALSCH -- Zone auf Kommunikation nicht eingetragen 
-- AND KM_Rufnummer = '6249' -- OK 
-- AND KM_Rufnummer = '6257' -- OK 
---------AND KM_Rufnummer = '6302' -- FALSCH  -- Zone auf Kommunikation nicht eingetragen 
-- AND KM_Rufnummer = '6218' -- OK 
-- AND KM_Rufnummer = '6270' -- OK 
-- AND KM_Rufnummer = '6245' -- OK 
-- AND KM_Rufnummer = '6258' -- OK 



-- AND KM_Rufnummer = '6221' --  ???? ist nicht auf bild

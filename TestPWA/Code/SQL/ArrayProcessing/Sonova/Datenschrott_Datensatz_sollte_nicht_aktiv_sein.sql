
DECLARE @in_stichtag datetime 
SET @in_stichtag = CURRENT_TIMESTAMP 


SELECT KM_UID, KM_DatumVon , KM_DatumBis , KM_Status 
	,T_AP_Zone.ZN_DatumVon 
	,T_AP_Zone.ZN_DatumBis 
	,T_AP_Zone.ZN_Status 
	 
	,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumVon 
	,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumBis 
	,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_Status 
	 
	,T_AP_Ref_Kostenstelle.KST_Status 
FROM T_AP_Kommunikation 

LEFT JOIN T_AP_Zone 
	ON T_AP_Zone.ZN_UID = T_AP_Kommunikation.KM_ZN_UID

LEFT JOIN T_ZO_AP_Zone_AP_Ref_Kostenstelle
	ON T_AP_Zone.ZN_UID = T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_ZN_UID
	AND T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumVon AS float)) AND CAST(T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumBis AS float)
	
LEFT JOIN T_AP_Ref_Kostenstelle
	ON T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_KST_UID = T_AP_Ref_Kostenstelle.KST_UID
	-- AND T_AP_Ref_Kostenstelle.KST_Status = 1

	
INNER JOIN T_AP_Geschoss
	ON T_AP_Zone.ZN_GS_UID = T_AP_Geschoss.GS_UID
	AND T_AP_Geschoss.GS_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Geschoss.GS_DatumVon AS float)) AND CAST(T_AP_Geschoss.GS_DatumBis AS float)
	
INNER JOIN T_AP_Gebaeude
	ON T_AP_Geschoss.GS_GB_UID = T_AP_Gebaeude.GB_UID
	AND T_AP_Gebaeude.GB_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Gebaeude.GB_DatumVon AS float)) AND CAST(T_AP_Gebaeude.GB_DatumBis AS float)

INNER JOIN T_AP_Standort
	ON T_AP_Gebaeude.GB_SO_UID = T_AP_Standort.SO_UID
	AND T_AP_Standort.SO_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Standort.SO_DatumVon AS float)) AND CAST(T_AP_Standort.SO_DatumBis AS float)
	
INNER JOIN T_AP_Ref_Geschosstyp
	ON T_AP_Geschoss.GS_GST_UID = T_AP_Ref_Geschosstyp.GST_UID


WHERE (1=1) 
AND T_AP_Kommunikation.KM_Status = 1 
AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Kommunikation.KM_DatumVon AS float)) AND CAST(T_AP_Kommunikation.KM_DatumBis AS float)
AND KST_Lang_DE = 'Measurem. & Config. Systems' -- 33
AND GB_Nr = 'L28' 
AND GS_Nr = '00' 
AND GST_Kurz_DE = 'EG' 

-- bis oben 33 
AND KM_UID NOT IN 
(
	SELECT 
		 KM_UID
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
	AND KST_Lang_DE = 'Measurem. & Config. Systems' 
)

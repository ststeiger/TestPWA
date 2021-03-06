
SELECT 
	 KM_UID 
	,KM_Nr
	,KM_Rufnummer
	,KM_DatumVon
	,KM_DatumBis 
	,KM_AP_UID
	,KM_ZN_UID
	,t.SVE_UID 
	,GB_Nr 
	,GST_Kurz_DE + GS_Nr AS GS 
FROM T_AP_Kommunikation 

LEFT JOIN T_AP_Arbeitsplatz ON AP_UID = KM_AP_UID 
LEFT JOIN T_AP_Raum ON RM_UID = AP_RM_UID 

LEFT JOIN T_AP_Zone ON ZN_UID = KM_ZN_UID 
LEFT JOIN T_AP_Geschoss ON GS_UID = ZN_GS_UID OR GS_UID = RM_GS_UID 
LEFT JOIN T_AP_Ref_Geschosstyp ON GST_UID = GS_GST_UID 
LEFT JOIN T_AP_Gebaeude ON GB_UID = GS_GB_UID 

OUTER APPLY 
	(
		SELECT TOP 1 * FROM T_VWS_SVGElement
		WHERE (1=1) 
		-- AND T_VWS_SVGElement.SVE_dateCreated <= CURRENT_TIMESTAMP AND (T_VWS_SVGElement.SVE_dateDeleted >= CURRENT_TIMESTAMP OR T_VWS_SVGElement.SVE_dateDeleted IS NULL)
		AND T_VWS_SVGElement.SVE_OBJT_Code = 'KM' 
		AND T_VWS_SVGElement.SVE_OBJ_UID = T_AP_Kommunikation.KM_UID 
		ORDER BY T_VWS_SVGElement.SVE_dateCreated DESC 
	) AS t 

WHERE (1=1) 
AND KM_Status = 1 
AND CURRENT_TIMESTAMP BETWEEN KM_DatumVon AND KM_DatumBis 
AND SVE_UID IS NULL 

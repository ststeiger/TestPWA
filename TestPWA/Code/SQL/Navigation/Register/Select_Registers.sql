
DECLARE @tMDT_Kurz varchar(200); 
SET @tMDT_Kurz = ( SELECT TOP 1 MDT_Kurz_DE FROM T_AP_Ref_Mandant WHERE MDT_ID = 0 ); -- @MDT_ID 


SELECT 
	 T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_UID 
	 
	,T_SYS_Ref_Register.REG_UID 
	,T_SYS_Ref_Register.REG_Code 
	,T_SYS_Ref_Register.REG_LANG_DE 
	-- ,T_SYS_Ref_Register.REG_REG_UID 
	,T_OV_Ref_ObjektTyp.OBJT_Code 
	,T_OV_Ref_ObjektTyp.OBJT_Lang_DE 
	 
	,T_SYS_Ref_Register.REG_Control 
	,T_SYS_Ref_Register.REG_Sort 
	 
	,T_ZO_SYS_Module_AP_Ref_Mandant.ZO_MODMDT_ActivationKey 
	,REG_usesMetadata 
FROM T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register 

LEFT JOIN T_OV_Ref_ObjektTyp 
	ON T_OV_Ref_ObjektTyp.OBJT_UID = T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_OBJT_UID 

LEFT JOIN T_SYS_Ref_Register 
	ON T_SYS_Ref_Register.REG_UID = T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_REG_UID 
	
LEFT JOIN T_SYS_Module 
	ON T_SYS_Module.MOD_UID = T_SYS_Ref_Register.REG_MOD_UID 
	AND T_SYS_Module.MOD_Status = 1 

LEFT JOIN T_ZO_SYS_Module_AP_Ref_Mandant 
	ON T_ZO_SYS_Module_AP_Ref_Mandant.ZO_MODMDT_MOD_UID = T_SYS_Module.MOD_UID 
	AND T_ZO_SYS_Module_AP_Ref_Mandant.ZO_MODMDT_Status = 1 
	AND T_ZO_SYS_Module_AP_Ref_Mandant.ZO_MODMDT_MDT_ID = 0 -- @mandant 

INNER JOIN T_Benutzer ON BE_ID = 12435 -- @BE_ID 

WHERE (1=1) 
AND T_SYS_Ref_Register.REG_Status = 1 
AND T_SYS_Ref_Register.REG_Show = 1 

AND T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_Status = 1 
AND T_OV_Ref_ObjektTyp.OBJT_Lang_DE = 'Standort' 

AND 
( 
	(T_Benutzer.BE_useMOD = 0) 
	OR 
	(T_SYS_Module.MOD_UID IS NULL) 
	OR 
	( 
		T_ZO_SYS_Module_AP_Ref_Mandant.ZO_MODMDT_ActivationKey = 
			UPPER( SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('MD5', @tMDT_Kurz + T_SYS_Module.MOD_Modul)), 3, 32) ) 
	) 
) 

AND 
( 
	T_SYS_Ref_Register.REG_UID IN 
	( 
		SELECT T_SYS_Registerrechte.REGR_REG_UID 
		FROM T_Benutzer_Benutzergruppen 
		INNER JOIN T_SYS_Registerrechte 
			ON T_SYS_Registerrechte.REGR_GRANTEE_ID = T_Benutzer_Benutzergruppen.BEBG_BG 
			AND T_Benutzer_Benutzergruppen.BEBG_BE = T_Benutzer.BE_ID 
		WHERE (1=1) 
		AND T_SYS_Registerrechte.REGR_Status = 1 
		AND T_SYS_Registerrechte.REGR_IsRead = 1 
	) 
) 

ORDER BY REG_Sort 

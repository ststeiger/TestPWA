
DECLARE @repl int 
SET @repl = 10; 



;WITH CTE AS 
(
	SELECT 
		 T_SYS_Ref_Register.REG_UID 
		,T_SYS_Ref_Register.REG_REG_UID 
		
		,T_SYS_Ref_Register.REG_Show
		,T_SYS_Ref_Register.REG_Code 
		 
		,CAST(CASE T_Benutzer.BE_Language 
			WHEN 'FR' THEN T_SYS_Ref_Register.REG_LANG_FR 
			WHEN 'IT' THEN T_SYS_Ref_Register.REG_LANG_IT 
			WHEN 'EN' THEN T_SYS_Ref_Register.REG_LANG_EN 
			ELSE T_SYS_Ref_Register.REG_LANG_DE 
		 END AS varchar(MAX)) AS Register 
		 
		,T_SYS_Ref_Register.REG_Control 
		,T_SYS_Ref_Register.REG_MOD_UID 
		,T_SYS_Ref_Register.REG_usesMetadata 
		 
		,T_SYS_Ref_Register.REG_Sort 
		,CAST(RIGHT(REPLICATE('0', @repl) + CAST(T_SYS_Ref_Register.REG_Sort AS varchar(36)), @repl) AS varchar(MAX)) AS RecursiveSort 
		,0 AS lvl 
	FROM T_SYS_Ref_Register 
	INNER JOIN T_Benutzer ON T_Benutzer.BE_ID = 12435 

	WHERE (1=1) 
	AND T_SYS_Ref_Register.REG_Status = 1 
	AND T_SYS_Ref_Register.REG_REG_UID IS NULL 

	UNION ALL 

	SELECT 
		 T_SYS_Ref_Register.REG_UID 
		,T_SYS_Ref_Register.REG_REG_UID 
		
		,T_SYS_Ref_Register.REG_Show 
		,T_SYS_Ref_Register.REG_Code 
		
		,CAST(CTE.Register + ' | ' + 
		 CASE T_Benutzer.BE_Language 
			WHEN 'FR' THEN T_SYS_Ref_Register.REG_LANG_FR 
			WHEN 'IT' THEN T_SYS_Ref_Register.REG_LANG_IT 
			WHEN 'EN' THEN T_SYS_Ref_Register.REG_LANG_EN 
			ELSE T_SYS_Ref_Register.REG_LANG_DE 
		 END AS varchar(MAX)) AS Register 
		 
		,T_SYS_Ref_Register.REG_Control 
		,T_SYS_Ref_Register.REG_MOD_UID  
		,T_SYS_Ref_Register.REG_usesMetadata 
		 
		,T_SYS_Ref_Register.REG_Sort  
		,CTE.RecursiveSort + '.' 
		 + RIGHT(REPLICATE('0', @repl) + CAST(T_SYS_Ref_Register.REG_Sort AS varchar(36)), @repl) 
		 AS RecursiveSort 
		,CTE.lvl + 1 AS lvl 
	FROM T_SYS_Ref_Register 
	INNER JOIN T_Benutzer ON T_Benutzer.BE_ID = 12435 
	INNER JOIN CTE ON CTE.REG_UID = T_SYS_Ref_Register.REG_REG_UID 

	WHERE (1=1) 
	AND T_SYS_Ref_Register.REG_Status = 1 
)
SELECT 
	 T_OV_Ref_ObjektTyp.OBJT_Code 
	,REG_UID 
	,REG_REG_UID 
	,REG_Show 
	,REG_Code 
	,Register 
	,REG_Control 
	,REG_MOD_UID 
	,REG_usesMetadata 
	,REG_Sort 
	,RecursiveSort 
	,lvl 
	,T_OV_Ref_ObjektTyp.OBJT_Sort 
	,T_OV_Ref_ObjektTyp.OBJT_Lang_DE 
FROM CTE 

LEFT JOIN T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register ON T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_REG_UID = REG_UID 
LEFT JOIN T_OV_Ref_ObjektTyp ON T_OV_Ref_ObjektTyp.OBJT_UID = T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_OBJT_UID 

-- WHERE OBJT_Lang_DE = 'Parkplatz'
WHERE OBJT_Lang_DE = 'Task'

-- ORDER BY lvl DESC 

ORDER BY OBJT_Sort, RecursiveSort 

-- SELECT * FROM T_OV_Ref_ObjektTyp 

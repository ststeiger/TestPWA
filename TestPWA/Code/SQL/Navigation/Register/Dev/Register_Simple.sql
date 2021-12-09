;WITH CTE AS 
(
	SELECT 
		 T_SYS_Ref_Register.REG_UID 
		,T_SYS_Ref_Register.REG_REG_UID 
		,T_SYS_Ref_Register.REG_Control 
		,T_SYS_Ref_Register.REG_Sort 
		,T_SYS_Ref_Register.REG_Code 
		,
		CASE 
			WHEN T_SYS_Ref_Register.REG_REG_UID IS NULL THEN '' 
			ELSE ' | ' 
		END 
		+ 
		CASE T_Benutzer.BE_Language 
			WHEN 'FR' THEN T_SYS_Ref_Register.REG_LANG_FR 
			WHEN 'IT' THEN T_SYS_Ref_Register.REG_LANG_IT 
			WHEN 'EN' THEN T_SYS_Ref_Register.REG_LANG_EN 
			ELSE T_SYS_Ref_Register.REG_LANG_DE 
		END AS Register 

		,ISNULL(ParentRegister.REG_Sort, T_SYS_Ref_Register.REG_Sort) AS ParentSort 
	FROM T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register 

	INNER JOIN T_Benutzer 
		ON T_Benutzer.BE_ID = 12435 

	INNER JOIN 
		( 
			-- SELECT TOP 1 OBJT_UID FROM T_OV_Ref_ObjektTyp WHERE OBJT_Status = 1 AND OBJT_Lang_DE = 'Standort' 
			SELECT TOP 1 * FROM T_OV_Ref_ObjektTyp 
			WHERE T_OV_Ref_ObjektTyp.OBJT_Status = 1 
			AND T_OV_Ref_ObjektTyp.OBJT_Lang_DE = 'Task' 
		) AS T_OV_Ref_ObjektTyp 
			ON T_OV_Ref_ObjektTyp.OBJT_UID = T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_OBJT_UID 

	LEFT JOIN T_SYS_Ref_Register 
		ON T_SYS_Ref_Register.REG_UID = T_ZO_OV_Ref_Objekttyp_T_SYS_Ref_Register.ZO_OBJTREG_REG_UID 

	LEFT JOIN T_SYS_Ref_Register AS ParentRegister
		ON ParentRegister.REG_UID = T_SYS_Ref_Register.REG_REG_UID 

	-- WHERE T_SYS_Ref_Register.REG_REG_UID IS NULL 
)
SELECT * FROM CTE 


ORDER BY 
	 ParentSort 
	,REG_Sort 
	,Register 
	 
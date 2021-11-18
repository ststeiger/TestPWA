
SELECT 
	 REG_UID 
	,REG_REG_UID 
	,REG_LANG_DE 
	,REG_Control
	,REG_Show
	,REG_Sort
	-- ,T_SYS_Module.MOD_Code
	,T_SYS_Module.MOD_Modul
	,T_SYS_Module.MOD_Description

FROM T_SYS_Ref_Register 

LEFT JOIN T_SYS_Module ON T_SYS_Module.MOD_UID = T_SYS_Ref_Register.REG_MOD_UID 

WHERE REG_Status = 1 


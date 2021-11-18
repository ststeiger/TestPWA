;WITH CTE AS 
(
	SELECT 
		 REG_UID 
		,REG_REG_UID 
		,REG_LANG_DE 
		,REG_Control
		,REG_Show
		,REG_Sort
		,0 AS lvl 
	FROM T_SYS_Ref_Register 
	WHERE REG_REG_UID IS NULL 
	

	UNION ALL 


	SELECT 
		 T_SYS_Ref_Register.REG_UID 
		,T_SYS_Ref_Register.REG_REG_UID 
		,T_SYS_Ref_Register.REG_LANG_DE 
		,T_SYS_Ref_Register.REG_Control
		,T_SYS_Ref_Register.REG_Show
		,T_SYS_Ref_Register.REG_Sort
		,CTE.lvl + 1 AS lvl 
	FROM T_SYS_Ref_Register 
	INNER JOIN CTE ON CTE.REG_UID = T_SYS_Ref_Register.REG_REG_UID 
)
SELECT * FROM CTE 
WHERE (1=1) 
-- AND REG_Control LIKE '%site%'
-- AND REG_LANG_DE = 'Stammdaten' 
-- AND REG_Control = '~/templates/forms/standort01.ascx' 




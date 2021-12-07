
SELECT 
	 T_Checklist.CL_UID 
	,T_Checklist.CL_Name 
	,T_Checklist.CL_Title 
FROM T_Checklist 
WHERE (1=1) 
ORDER BY CL_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

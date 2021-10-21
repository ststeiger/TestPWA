
DECLARE @__cl_uid uniqueidentifier; 
SET @__cl_uid = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 


-- CREATE SCHEMA smtp; 
-- ALTER SCHEMA smtp TRANSFER dbo.messages




SELECT 
	 LOWER(T_ChecklistElements.ELE_UID) AS ELE_UID 
	,T_ChecklistElements.ELE_Parent_UID 
	,T_ChecklistElements.ELE_CL_UID 
	,T_ChecklistElements.ELE_TagName 
	,T_ChecklistElements.ELE_Level 
	,T_ChecklistElements.ELE_Sort 
	,T_ChecklistElements.ELE_InnerHtml 
	,CASE 
		WHEN T_ChecklistElements.ELE_InnerHtml = '<span><br></span>' THEN NULL 
		WHEN T_ChecklistElements.ELE_InnerHtml = '<span style="color: #F2F2F2;"><br></span>' THEN NULL 
		WHEN T_ChecklistElements.ELE_InnerHtml = '' THEN NULL 
		ELSE T_ChecklistElements.ELE_InnerHtml 
	 END AS ELE_InnerHtml2 
FROM T_ChecklistElements 
WHERE (1=1) 
AND T_ChecklistElements.ELE_CL_UID = @__cl_uid 
AND T_ChecklistElements.ELE_UID IN 
(
	SELECT 
		 T_Checklist_ZO_ElementProperties.PRO_ELE_UID 
	FROM T_Checklist_ZO_ElementProperties 
	WHERE (1=1) 
	AND T_Checklist_ZO_ElementProperties.PRO_ELE_UID IN (SELECT T_ChecklistElements.ELE_UID FROM T_ChecklistElements WHERE T_ChecklistElements.ELE_CL_UID = @__cl_uid) 
	AND PRO_Name = 'bgcolor' 
	AND PRO_Value = '#E7E6E6' 
) 
-- AND ELE_UID = 'acb75d61-0626-47b9-9814-a1fceea66f8a'
-- AND ELE_UID IN ('acb75d61-0626-47b9-9814-a1fceea66f8a', '34ee8746-c0a6-4d31-989b-0542806a855e')
-- AND T_ChecklistElements.ELE_Level = 3 
ORDER BY ELE_RecSort, ELE_Level, ELE_Sort 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

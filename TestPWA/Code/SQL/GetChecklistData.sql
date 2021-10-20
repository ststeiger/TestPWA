
-- DECLARE @__cl_uid uniqueidentifier; 
-- SET @__cl_uid = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 



SELECT 
	 T_Checklist.CL_UID 
	,T_Checklist.CL_Name 
FROM T_Checklist 
WHERE (1=1) 
AND CL_UID = @__cl_uid 
ORDER BY CL_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


SELECT 
	 T_ChecklistElements.ELE_UID 
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
-- AND T_ChecklistElements.ELE_Level = 3 
ORDER BY ELE_Level, ELE_Sort 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


SELECT 
	 T_Checklist_ZO_ElementProperties.PRO_UID 
	,T_Checklist_ZO_ElementProperties.PRO_Name 
	,T_Checklist_ZO_ElementProperties.PRO_Value 
	,T_Checklist_ZO_ElementProperties.PRO_ELE_UID 
FROM T_Checklist_ZO_ElementProperties 
WHERE (1=1) 
AND T_Checklist_ZO_ElementProperties.PRO_ELE_UID IN (SELECT T_ChecklistElements.ELE_UID FROM T_ChecklistElements WHERE T_ChecklistElements.ELE_CL_UID = @__cl_uid) 
ORDER BY PRO_ELE_UID, PRO_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

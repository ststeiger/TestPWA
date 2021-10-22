
SELECT 
	 CL_UID 
	,CL_Name 
FROM T_Checklist 


SELECT ELE_CL_UID, COUNT(ELE_UID) AS cnt 
FROM T_ChecklistElements 
GROUP BY ELE_CL_UID 


SELECT 
	 PRO_ELE_UID 
	,COUNT(*) AS cnt 
FROM T_Checklist_ZO_ElementProperties 
GROUP BY PRO_ELE_UID 

/*
SELECT 
	 ELE_UID 
	,ELE_Parent_UID 
	,ELE_CL_UID 
	,ELE_TagName 
	,ELE_Level 
	,ELE_Sort 
	,ELE_RecSort 
	,ELE_InnerHtml 
FROM T_ChecklistElements 


SELECT 
	 PRO_UID 
	,PRO_Name 
	,PRO_Value 
	,PRO_ELE_UID 
FROM T_Checklist_ZO_ElementProperties 
*/

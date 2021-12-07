
-- Checklist2.GetAvailableChecklists.sql
 -- DECLARE @__obj_uid uniqueidentifier; 
 -- DECLARE @__tsk_uid uniqueidentifier; 
 -- DECLARE @__objt_code character varying(50); 
 -- SET @__obj_uid = NULL; 
 -- SET @__objt_code = NULL; 
 -- SET @__tsk_uid = NULL; 


SELECT 
	 T_Checklist.CL_UID 
	,T_Checklist.CL_Name 
	,T_Checklist.CL_Title 
	,COUNT(DISTINCT T_Checklist_ZO_SavedDataSet.CLS_UID) AS CL_SavedCount 
	--,T_COR_Objekte.OBJ_Label 
	--,T_TM_Tasks._TSK_Nr 
FROM T_Checklist 

LEFT JOIN T_ChecklistVersion 
	ON T_ChecklistVersion.CLV_CL_UID = T_Checklist.CL_UID 

LEFT JOIN T_Checklist_ZO_SavedDataSet 
	ON T_Checklist_ZO_SavedDataSet.CLS_CLV_UID = T_ChecklistVersion.CLV_UID 

LEFT JOIN T_Benutzer 
	ON T_Benutzer.BE_ID = T_Checklist_ZO_SavedDataSet.CLS_BE_ID

LEFT JOIN T_COR_Objekte 
	ON T_COR_Objekte.OBJ_UID = T_Checklist_ZO_SavedDataSet.CLS_OBJ_UID
	AND T_COR_Objekte.OBJ_OBJT_Code = T_Checklist_ZO_SavedDataSet.CLS_OBJT_Code

LEFT JOIN T_TM_Tasks 
	ON T_TM_Tasks.TSK_UID = T_Checklist_ZO_SavedDataSet.CLS_TSK_UID 

WHERE (1=1) 
-- AND T_ChecklistVersion.CLV_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46' 

AND 
( 
	T_TM_Tasks.TSK_UID = @__tsk_uid  
	OR 
	( 
		T_Checklist_ZO_SavedDataSet.CLS_OBJ_UID = @__obj_uid 
		AND 
		T_Checklist_ZO_SavedDataSet.CLS_OBJT_Code = @__objt_code 
	) 
	OR 
	(
		@__tsk_uid IS NULL AND @__obj_uid IS NULL AND @__objt_code IS NULL 
	)
) 

GROUP BY 
	 T_Checklist.CL_UID 
	,T_Checklist.CL_Name 
	,T_Checklist.CL_Title 
	 
ORDER BY 
	 T_Checklist.CL_Name 
	,T_Checklist.CL_Title 
	 
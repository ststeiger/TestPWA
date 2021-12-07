
-- Checklist2.SelectSavedDataset.sql
-- DECLARE @__cl_uid uniqueidentifier; 
-- DECLARE @__tsk_uid uniqueidentifier; 
-- DECLARE @__obj_uid uniqueidentifier; 
-- DECLARE @__objt_code character varying(50); 

-- SET @__cl_uid = 'F1A2DD8A-2D11-496E-9B14-13559405089F'; 
-- SET @__tsk_uid = NULL; 
-- SET @__obj_uid = NULL; 
-- SET @__objt_code = NULL; 



SELECT 
	 T_Checklist_ZO_SavedDataSet.CLS_UID AS k 
	,-- T_Checklist.CL_Name + N' ' + 
	  CONVERT(char(10), T_Checklist_ZO_SavedDataSet.CLS_Date, 104) 
	+ N' ' 
	+ CONVERT(char(8), T_Checklist_ZO_SavedDataSet.CLS_Date, 108) 
	+ ISNULL(N' (' + T_Benutzer._BE_Label + N')', N'') 
	AS v 
	
	-- ,T_COR_Objekte.OBJ_Label 
	-- ,T_TM_Tasks._TSK_Nr 
	-- ,T_Checklist.CL_UID 
	-- ,T_Checklist.CL_Title 
FROM T_Checklist_ZO_SavedDataSet 

LEFT JOIN T_ChecklistVersion 
	ON T_ChecklistVersion.CLV_UID = T_Checklist_ZO_SavedDataSet.CLS_CLV_UID 

LEFT JOIN T_Checklist 
	ON T_Checklist.CL_UID = T_ChecklistVersion.CLV_CL_UID 

LEFT JOIN T_Benutzer 
	ON T_Benutzer.BE_ID = T_Checklist_ZO_SavedDataSet.CLS_BE_ID

LEFT JOIN T_COR_Objekte 
	ON T_COR_Objekte.OBJ_UID = T_Checklist_ZO_SavedDataSet.CLS_OBJ_UID
	AND T_COR_Objekte.OBJ_OBJT_Code = T_Checklist_ZO_SavedDataSet.CLS_OBJT_Code

LEFT JOIN T_TM_Tasks 
	ON T_TM_Tasks.TSK_UID = T_Checklist_ZO_SavedDataSet.CLS_TSK_UID 

WHERE (1=1) 
AND T_ChecklistVersion.CLV_CL_UID = @__cl_uid 

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

ORDER BY 
	T_Checklist_ZO_SavedDataSet.CLS_Date DESC 

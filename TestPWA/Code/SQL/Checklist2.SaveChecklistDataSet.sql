
-- SaveChecklistDataSet.sql 
-- DECLARE @__cls_uid uniqueidentifier; 
-- DECLARE @__cls_cl_uid uniqueidentifier; 
-- SET @__cls_uid = NEWID(); 
-- SET @__cls_cl_uid = NEWID(); 


DECLARE @__cls_date datetime; 
SET @__cls_date = CURRENT_TIMESTAMP; 

DECLARE @__clv_uid uniqueidentifier; 
SET @__clv_uid = (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cls_cl_uid ORDER BY CLV_Created  DESC ); 


INSERT INTO T_Checklist_ZO_SavedDataSet
(
	 CLS_UID
	,CLS_CLV_UID
	,CLS_Date
	,CLS_OBJ_UID
	,CLS_OBJT_Code
	,CLS_TSK_UID
)
VALUES( @__cls_uid, @__clv_uid, @__cls_date, NULL, NULL, NULL ); 

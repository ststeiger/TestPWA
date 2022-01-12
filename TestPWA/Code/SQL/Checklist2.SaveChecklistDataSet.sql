
-- SaveChecklistDataSet.sql 
-- DECLARE @__cls_uid uniqueidentifier; 
-- DECLARE @__cls_cl_uid uniqueidentifier; 
-- DECLARE @__cls_be_hash varchar(50); 
-- DECLARE @__cls_tsk_uid uniqueidentifier
-- DECLARE @__cls_obj_uid uniqueidentifier
-- DECLARE @__cls_objt_code character varying(50) 

-- SET @__cls_uid = NEWID(); 
-- SET @__cls_cl_uid = NEWID(); 
-- SET @__cls_be_hash = '84e1999d5794cf8c064e82e110ae3c49'; 
-- SET @__cls_tsk_uid = NULL; 
-- SET @__cls_obj_uid = NULL; 
-- SET @__cls_objt_code = NULL; 
-- SET @__cls_be_hash = '84e1999d5794cf8c064e82e110ae3c49' 
	



DECLARE @__cls_date datetime; 
DECLARE @__clv_uid uniqueidentifier; 
DECLARE @__cls_be_id int; 

SET @__cls_date = CURRENT_TIMESTAMP; 
SET @__clv_uid = (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cls_cl_uid ORDER BY CLV_Created  DESC ); 
SET @__cls_be_id = (SELECT TOP 1 BE_ID FROM T_Benutzer WHERE BE_Hash = @__cls_be_hash AND BE_Status = 1); 
-- SET @__cls_cl_uid = (SELECT TOP 1 CL_UID FROM T_Checklist); 



-- INSERT INTO T_Checklist_ZO_SavedDataSet
-- (
--	  CLS_UID
--	 ,CLS_CLV_UID
--	 ,CLS_BE_ID 
--	 ,CLS_Date
--	 ,CLS_OBJ_UID
--	 ,CLS_OBJT_Code
--	 ,CLS_TSK_UID
-- )
-- VALUES( @__cls_uid, @__clv_uid, @__cls_be_id, @__cls_date, @__cls_obj_uid, @__cls_objt_code, @__cls_tsk_uid ); 


-- -- DELETE FROM T_Checklist_ZO_SavedDataSet WHERE CLS_CLV_UID IS NULL; 
-- -- DELETE FROM T_Checklist_ZO_SavedDataSet WHERE CLS_TSK_UID IS NOT NULL 
-- -- DELETE FROM T_Checklist_ZO_SavedDataSet WHERE CLS_BE_ID IS NOT NULL 

-- -- SELECT * FROM T_Checklist_ZO_SavedDataSet; 




;WITH CTE AS 
( 
	SELECT 
		 @__cls_uid AS CLS_UID 
		,@__clv_uid AS CLS_CLV_UID 
		,@__cls_be_id AS CLS_BE_ID 
		,@__cls_date AS CLS_Date 
		,@__cls_obj_uid AS CLS_OBJ_UID 
		,@__cls_objt_code AS CLS_OBJT_Code 
		,@__cls_tsk_uid AS CLS_TSK_UID 
)
-- SELECT * FROM CTE; 
MERGE INTO dbo.T_Checklist_ZO_SavedDataSet AS A USING CTE ON CTE.CLS_UID = A.CLS_UID 
WHEN MATCHED 
	THEN UPDATE
		SET  -- A.CLS_CLV_UID = CTE.CLS_CLV_UID 
			 A.CLS_BE_ID = CTE.CLS_BE_ID  
			,A.CLS_Date = CTE.CLS_Date 
			,A.CLS_OBJ_UID = CTE.CLS_OBJ_UID 
			,A.CLS_OBJT_Code = CTE.CLS_OBJT_Code 
			,A.CLS_TSK_UID = CTE.CLS_TSK_UID 


WHEN NOT MATCHED THEN 
INSERT 
( 
	 CLS_UID
	,CLS_CLV_UID
	,CLS_BE_ID 
	,CLS_Date
	,CLS_OBJ_UID
	,CLS_OBJT_Code
	,CLS_TSK_UID
)
VALUES
(
	 CTE.CLS_UID
	,CTE.CLS_CLV_UID
	,CTE.CLS_BE_ID 
	,CTE.CLS_Date
	,CTE.CLS_OBJ_UID
	,CTE.CLS_OBJT_Code
	,CTE.CLS_TSK_UID
);		
-- SELECT * FROM T_Checklist_ZO_SavedDataSet 

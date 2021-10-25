
-- SaveChecklistDataSet.sql 
-- DECLARE @__cls_uid uniqueidentifier; 
-- DECLARE @__cls_cl_uid uniqueidentifier; 
-- SET @__cls_uid = NEWID(); 
-- SET @__cls_cl_uid = NEWID(); 


DECLARE @__cls_date datetime; 
SET @__cls_date = CURRENT_TIMESTAMP; 


INSERT INTO T_Checklist_ZO_SaveDates(CLS_UID, CLS_CL_UID, CLS_Date)
VALUES( @__cls_uid, @__cls_cl_uid, @__cls_date );

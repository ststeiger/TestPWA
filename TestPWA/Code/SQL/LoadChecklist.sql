
-- LoadChecklist.sql
-- DECLARE @__cls_uid uniqueidentifier; 
-- DECLARE @__cl_uid uniqueidentifier; 
-- SET @__cls_uid = NEWID(); 
-- SET @__cl_uid = NEWID(); 


SELECT 
	 -- CLV_CLS_UID, 
	 CLV_ELE_UID 
	,CLV_Value 
FROM T_Checklist_ZO_ElementValues 
WHERE (1=1) 
AND CLV_CLS_UID IN 
( 
	SELECT TOP 1 
		 CLS_UID 
		--,CLS_CL_UID 
		--,CLS_Date 
	FROM T_Checklist_ZO_SaveDates 
	WHERE (1=1) 
	-- AND CLS_UID = @__cls_uid 
	AND CLS_CL_UID = @__cl_uid 
	ORDER BY CLS_Date DESC 
) 

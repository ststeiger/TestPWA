
-- Checklist2.CheckTaskDoneFlag.sql
-- DECLARE @__cls_tsk_uid varchar(36) 
-- SET @__cls_tsk_uid = 'FCC3EE0B-EE57-490F-BF11-0000B3DBEAD1' 
-- SET @__cls_tsk_uid = '90B98AC9-5198-49D5-8C02-2A01D16E9A7D' 
-- SET @__cls_tsk_uid = '' 
-- SET @__cls_tsk_uid = NULL 



SET @__cls_tsk_uid = NULLIF(@__cls_tsk_uid, ''); 

SELECT
	ISNULL
	(
		(
			SELECT TOP 1 
				T_TM_Ref_TaskStatus.TSTA_IsDone -- , TSK_UID 
			FROM T_TM_Tasks 
			LEFT JOIN T_TM_Ref_TaskStatus ON T_TM_Ref_TaskStatus.TSTA_UID = T_TM_Tasks.TSK_TSTA_UID 
			WHERE (1=1) 
			AND TSK_UID = @__cls_tsk_uid
			-- AND T_TM_Ref_TaskStatus.TSTA_IsDone = 1 
		) 
		,0
	) AS IsDone 

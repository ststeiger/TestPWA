﻿
-- DELETE FROM T_Checklist_ZO_SaveDates WHERE CLS_UID <> '1B938FD6-F7F2-4C92-84D3-EA4E4B5D3283'

-- SELECT DISTINCT CLV_CLS_UID FROM T_Checklist_ZO_ElementValues 


SELECT 
	 CLS_UID 
	,CLS_CL_UID 
	,CLS_Date 
FROM T_Checklist_ZO_SaveDates 
WHERE CLS_UID = '1B938FD6-F7F2-4C92-84D3-EA4E4B5D3283' 



SELECT 
	 CLV_CLS_UID
	,CLV_ELE_UID
	,CLV_Value
FROM T_Checklist_ZO_ElementValues 
WHERE CLV_CLS_UID = '1B938FD6-F7F2-4C92-84D3-EA4E4B5D3283'
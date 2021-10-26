
-- SELECT TOP 1 BE_Hash FROM T_Benutzer WHERE BE_User = 'administrator' 

-- http://localhost:3830/COR-Basic/Checklist/Index.aspx?proc=200CEB26807D6BF99FD6F4F0D1CA54D4
-- http://localhost:3830/COR-Basic/Checklist/Error.html?language=DE&scheme=Black&corError=Der%20Objektverweis%20wurde%20nicht%20auf%20eine%20Objektinstanz%20festgelegt.
SELECT* FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME LIKE '%checklist%' 
AND TABLE_TYPE = 'BASE TABLE' 
ORDER BY TABLE_SCHEMA, TABLE_NAME

-- SELECT * FROM V_TM_Checklist 


--T_CL_Checklist
--T_TM_Checklist_Value
--T_TM_Ref_Checkliste
--T_TM_Ref_Checkliste_Absatz
--T_TM_Ref_Checkliste_Checkpoints
--T_TM_Ref_Checkliste_Details
--T_TM_Ref_Checkliste_Taetigkeit
--T_TM_Ref_Checkliste_Wartung
--T_ZO_CL_Checklist
--T_ZO_CL_Checklist_Values
--T_ZO_OV_Ref_Objekttyp_TM_Ref_Checkliste
--T_ZO_TASK_Ref_Checkliste_Comment

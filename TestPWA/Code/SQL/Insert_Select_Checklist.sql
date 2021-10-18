
DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 
DELETE FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
DELETE FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 

-- INSERT INTO T_Checklist(CL_UID, CL_Name)
SELECT 
	 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID -- uniqueidentifier 
	,N'Testcheckliste' AS CL_Name -- nvarchar(256) 
;


-- INSERT INTO T_ChecklistElements(ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_InnerHtml)
SELECT 
	 N'' AS ELE_UID -- uniqueidentifier
	,N'' AS ELE_Parent_UID -- uniqueidentifier
	,N'' AS ELE_CL_UID -- uniqueidentifier
	,N'' AS ELE_TagName -- nvarchar(256)
	,N'' AS ELE_InnerHtml -- nvarchar(max)
; 


-- INSERT INTO T_Checklist_ZO_ElementProperties(PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID)
SELECT 
	 N'' AS PRO_UID -- uniqueidentifier
	,N'' AS PRO_Name -- nvarchar(4000)
	,N'' AS PRO_Value -- nvarchar(max)
	,N'' AS PRO_ELE_UID -- uniqueidentifier)
; 





SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 

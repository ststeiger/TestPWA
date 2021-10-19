
-- checklist
-- cl_id	cl_name

-- checklist_elements
-- ele_id	ele_parent_id	ele_cl_id	ele_tag_name	ele_innerhtml

-- checklist_zo_elements_properties
-- prop_id	prop_name	prop_value	prop_ele_id




IF EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.TABLES  
	WHERE TABLE_TYPE = 'BASE TABLE' 
	AND TABLE_SCHEMA = 'dbo' 
	AND TABLE_NAME = 'T_Checklist_ZO_ElementProperties' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_Checklist_ZO_ElementProperties');
END 


GO


IF EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.TABLES  
	WHERE TABLE_TYPE = 'BASE TABLE' 
	AND TABLE_SCHEMA = 'dbo' 
	AND TABLE_NAME = 'T_ChecklistElements' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_ChecklistElements');
END 


GO


IF EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.TABLES  
	WHERE TABLE_TYPE = 'BASE TABLE' 
	AND TABLE_SCHEMA = 'dbo' 
	AND TABLE_NAME = 'T_Checklist' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_Checklist');
END 


GO



-- checklist
-- cl_id	cl_name
CREATE TABLE dbo.T_Checklist 
(
	 CL_UID uniqueidentifier CONSTRAINT PK_T_Checklist PRIMARY KEY 
	,CL_Name national character varying(256) 
);


GO 


-- checklist_elements
-- ele_id	ele_parent_id	ele_cl_id	ele_tag_name	ele_level	ele_sort	ele_innerhtml
CREATE TABLE dbo.T_ChecklistElements 
(
	 ELE_UID uniqueidentifier CONSTRAINT PK_T_ChecklistElements PRIMARY KEY 
	,ELE_Parent_UID uniqueidentifier 
	,ELE_CL_UID uniqueidentifier 
	,ELE_TagName national character varying(256) 
	,ELE_Level int 
	,ELE_Sort int 
	,ELE_InnerHtml national character varying(MAX) 
);


GO 


-- checklist_map_checklist_elements_properties 
-- prop_id	prop_name	prop_value	prop_ele_id
CREATE TABLE dbo.T_Checklist_ZO_ElementProperties 
(
	 PRO_UID uniqueidentifier CONSTRAINT PK_T_Checklist_ZO_ElementProperties PRIMARY KEY 
	,PRO_Name national character varying(4000) 
	,PRO_Value national character varying(MAX) 
	,PRO_ELE_UID uniqueidentifier 
);

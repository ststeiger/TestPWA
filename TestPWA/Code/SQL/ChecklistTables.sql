
-- checklist
-- cl_id	cl_name

-- checklist_elements
-- ele_id	ele_parent_id	ele_cl_id	ele_tag_name	ele_innerhtml

-- checklist_zo_elements_properties
-- prop_id	prop_name	prop_value	prop_ele_id





-- checklist
-- cl_id	cl_name
CREATE TABLE dbo.T_Checklist 
(
	 CL_UID uniqueidentifier CONSTRAINT PK_T_Checklist PRIMARY KEY 
	,CL_Name nvarchar(256) 
);


GO 

-- 
-- ele_id	ele_parent_id	ele_cl_id	ele_tag_name	ele_innerhtml
CREATE TABLE dbo.T_ChecklistElements 
(
	 ELE_UID uniqueidentifier CONSTRAINT PK_T_ChecklistElements PRIMARY KEY 
	,ELE_Parent_UID uniqueidentifier 
	,ELE_CL_UID uniqueidentifier 
	,ELE_TagName nvarchar(256) 
	,ELE_InnerHtml nvarchar(MAX) 
);


GO 

-- checklist_zo_element_properties 
-- prop_id	prop_name	prop_value	prop_ele_id
CREATE TABLE dbo.T_Checklist_ZO_ElementProperties 
(
	 PRO_UID uniqueidentifier CONSTRAINT PK_T_ChecklistElements PRIMARY KEY 
	,PRO_Name nvarchar(256) 
	,PRO_Value nvarchar(256) 
	,PRO_ELE_UID uniqueidentifier 
);


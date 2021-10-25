
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
	AND TABLE_NAME = 'T_Checklist_ZO_ElementValues' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_Checklist_ZO_ElementValues');
END 


GO 


IF EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.TABLES  
	WHERE TABLE_TYPE = 'BASE TABLE' 
	AND TABLE_SCHEMA = 'dbo' 
	AND TABLE_NAME = 'T_Checklist_ZO_SaveDates' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_Checklist_ZO_SaveDates');
END 


GO


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
	,ELE_RecSort varchar(MAX) 
	,ELE_InnerHtml national character varying(MAX) 

	,CONSTRAINT FK_T_ChecklistElements_T_Checklist FOREIGN KEY(ELE_CL_UID) REFERENCES dbo.T_Checklist(CL_UID) ON DELETE CASCADE ON UPDATE CASCADE
	-- ,CONSTRAINT FK_T_ChecklistElements_T_ChecklistElements FOREIGN KEY(ELE_Parent_UID) REFERENCES dbo.T_ChecklistElements(ELE_UID) ON DELETE CASCADE ON UPDATE CASCADE
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
	,CONSTRAINT FK_T_Checklist_ZO_ElementProperties_T_ChecklistElements FOREIGN KEY(PRO_ELE_UID) REFERENCES dbo.T_ChecklistElements(ELE_UID) ON DELETE CASCADE ON UPDATE CASCADE 
);


GO


CREATE TABLE dbo.T_Checklist_ZO_SaveDates 
(
	 CLS_UID uniqueidentifier CONSTRAINT PK_T_Checklist_ZO_SaveDates PRIMARY KEY 
	,CLS_CL_UID uniqueidentifier 
	,CLS_Date datetime 
	,CONSTRAINT FK_T_Checklist_ZO_SaveDates_T_Checklist FOREIGN KEY(CLS_CL_UID) REFERENCES dbo.T_Checklist(CL_UID) ON DELETE CASCADE ON UPDATE CASCADE 
);


GO


CREATE TABLE dbo.T_Checklist_ZO_ElementValues 
( 
	 CLV_CLS_UID uniqueidentifier NOT NULL 
	,CLV_ELE_UID uniqueidentifier 
	,CLV_Value national character varying(MAX) 
	,CONSTRAINT PK_T_Checklist_ZO_ElementValues PRIMARY KEY(CLV_CLS_UID, CLV_ELE_UID) 
	-- ,CONSTRAINT FK_T_Checklist_ZO_ElementValues_T_ChecklistElements FOREIGN KEY(CLV_ELE_UID) REFERENCES dbo.T_ChecklistElements(ELE_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_Checklist_ZO_ElementValues_T_Checklist_ZO_SaveDates FOREIGN KEY(CLV_CLS_UID) REFERENCES dbo.T_Checklist_ZO_SaveDates(CLS_UID) ON DELETE CASCADE ON UPDATE CASCADE 
);


GO 


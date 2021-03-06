
-- DELETE FROM T_ChecklistElements WHERE ELE_UID = 'f31136ff-4380-4901-b14a-029b028fe8e0' 


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
	AND TABLE_NAME = 'T_Checklist_ZO_SavedDataSet' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_Checklist_ZO_SavedDataSet');
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
	AND TABLE_NAME = 'T_ChecklistElements_i18n' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_ChecklistElements_i18n');
END 


GO


IF EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.TABLES  
	WHERE TABLE_TYPE = 'BASE TABLE' 
	AND TABLE_SCHEMA = 'dbo' 
	AND TABLE_NAME = 'T_ChecklistElements_i18n2' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_ChecklistElements_i18n2');
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
	AND TABLE_NAME = 'T_ChecklistVersion' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_ChecklistVersion');
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



CREATE TABLE dbo.T_Checklist 
(
	 CL_UID uniqueidentifier CONSTRAINT PK_T_Checklist PRIMARY KEY 
	,CL_Name national character varying(256) 
	,CL_Title national character varying(256) 
);


GO 


CREATE TABLE dbo.T_ChecklistVersion 
(
	 CLV_UID uniqueidentifier NOT NULL 
	,CLV_CL_UID uniqueidentifier NOT NULL 
	,CLV_Owner_BE_ID int NULL 
	,CLV_Created datetime NULL CONSTRAINT DF_T_ChecklistVersion_CLV_Created DEFAULT (CURRENT_TIMESTAMP) 
	,CLV_Obsoleted datetime NULL CONSTRAINT DF_T_ChecklistVersion_CLV_Obsoleted DEFAULT (CAST('29991231' AS datetime)) 
	,CONSTRAINT PK_T_ChecklistVersion PRIMARY KEY ( CLV_UID ) 
	,CONSTRAINT FK_T_ChecklistVersion_T_Checklist FOREIGN KEY(CLV_CL_UID) REFERENCES dbo.T_Checklist(CL_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_ChecklistVersion_T_Benutzer FOREIGN KEY(CLV_Owner_BE_ID) REFERENCES dbo.T_Benutzer(BE_ID) ON DELETE SET NULL ON UPDATE CASCADE 
); 


GO



-- checklist_elements
-- ele_id	ele_parent_id	ele_cl_id	ele_tag_name	ele_level	ele_sort	ele_innerhtml
CREATE TABLE dbo.T_ChecklistElements 
(
	 ELE_UID uniqueidentifier CONSTRAINT PK_T_ChecklistElements PRIMARY KEY 
	,ELE_Parent_UID uniqueidentifier 
	,ELE_CLV_UID uniqueidentifier 
	,ELE_TagName national character varying(256) 
	,ELE_Level int 
	,ELE_Sort int 
	,ELE_RecSort varchar(MAX) 
	,ELE_InnerHtml national character varying(MAX) 
	-- ,ELE_PropertiesAsJSON national character varying(MAX) 
	,CONSTRAINT FK_T_ChecklistElements_T_ChecklistVersion FOREIGN KEY(ELE_CLV_UID) REFERENCES dbo.T_ChecklistVersion(CLV_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	-- ,CONSTRAINT FK_T_ChecklistElements_T_ChecklistElements FOREIGN KEY(ELE_Parent_UID) REFERENCES dbo.T_ChecklistElements(ELE_UID) ON DELETE CASCADE ON UPDATE CASCADE
);


GO 


CREATE TABLE dbo.T_ChecklistElements_i18n 
( 
	 ELE_i18n_ELE_UID uniqueidentifier NOT NULL 
	,ELE_i18n_SYSLANG_LCID int NOT NULL 
	,ELE_i18n_InnerHtml nvarchar(max) NULL 
	,CONSTRAINT PK_T_ChecklistElements_i18n PRIMARY KEY ( ELE_i18n_ELE_UID, ELE_i18n_SYSLANG_LCID ) 
	,CONSTRAINT FK_T_ChecklistElements_i18n_T_ChecklistElements FOREIGN KEY(ELE_i18n_ELE_UID) REFERENCES dbo.T_ChecklistElements(ELE_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_ChecklistElements_i18n_T_SYS_Language FOREIGN KEY(ELE_i18n_SYSLANG_LCID) REFERENCES dbo.T_SYS_Language(SYSLANG_LCID) ON DELETE CASCADE ON UPDATE CASCADE 
); 


GO


CREATE TABLE dbo.T_ChecklistElements_i18n2 
( 
	 ELE_i18n2_ELE_UID uniqueidentifier NOT NULL 
	,ELE_i18n2_SYSLANG_LCID int NOT NULL 
	,ELE_i18n2_InnerHtml nvarchar(max) NULL 
	,CONSTRAINT PK_T_ChecklistElements_i18n2 PRIMARY KEY ( ELE_i18n2_ELE_UID, ELE_i18n2_SYSLANG_LCID ) 
	,CONSTRAINT FK_T_ChecklistElements_i18n2_T_ChecklistElements FOREIGN KEY(ELE_i18n2_ELE_UID) REFERENCES dbo.T_ChecklistElements(ELE_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_ChecklistElements_i18n2_T_SYS_Language FOREIGN KEY(ELE_i18n2_SYSLANG_LCID) REFERENCES dbo.T_SYS_Language(SYSLANG_LCID) ON DELETE CASCADE ON UPDATE CASCADE 
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


CREATE TABLE dbo.T_Checklist_ZO_SavedDataSet 
( 
	 CLS_UID uniqueidentifier CONSTRAINT PK_T_Checklist_ZO_SavedDataSet PRIMARY KEY 
	,CLS_CLV_UID uniqueidentifier 
	,CLS_Date datetime 
	,CLS_BE_ID int  
	,CLS_OBJ_UID uniqueidentifier 
	,CLS_OBJT_Code character varying(50) 
	,CLS_TSK_UID uniqueidentifier 
	,CONSTRAINT FK_T_Checklist_ZO_SavedDataSet_T_ChecklistVersion FOREIGN KEY(CLS_CLV_UID) REFERENCES dbo.T_ChecklistVersion(CLV_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_Checklist_ZO_SavedDataSet_T_COR_Objekte FOREIGN KEY(CLS_OBJ_UID, CLS_OBJT_Code) REFERENCES dbo.T_COR_Objekte(OBJ_UID, OBJ_OBJT_Code) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_Checklist_ZO_SavedDataSet_T_TM_Tasks FOREIGN KEY(CLS_TSK_UID) REFERENCES dbo.T_TM_Tasks(TSK_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_Checklist_ZO_SavedDataSet_T_Benutzer FOREIGN KEY(CLS_BE_ID) REFERENCES dbo.T_Benutzer(BE_ID) ON DELETE NO ACTION ON UPDATE NO ACTION 
);

GO


CREATE TABLE dbo.T_Checklist_ZO_ElementValues 
( 
	 CLV_CLS_UID uniqueidentifier NOT NULL 
	,CLV_ELE_UID uniqueidentifier 
	,CLV_Value national character varying(MAX) 
	,CONSTRAINT PK_T_Checklist_ZO_ElementValues PRIMARY KEY(CLV_CLS_UID, CLV_ELE_UID) 
	-- ,CONSTRAINT FK_T_Checklist_ZO_ElementValues_T_ChecklistElements FOREIGN KEY(CLV_ELE_UID) REFERENCES dbo.T_ChecklistElements(ELE_UID) ON DELETE CASCADE ON UPDATE CASCADE 
	,CONSTRAINT FK_T_Checklist_ZO_ElementValues_T_Checklist_ZO_SavedDataSet FOREIGN KEY(CLV_CLS_UID) REFERENCES dbo.T_Checklist_ZO_SavedDataSet(CLS_UID) ON DELETE CASCADE ON UPDATE CASCADE 
);


GO 


-- CREATE SCHEMA smtp; 
-- ALTER SCHEMA smtp TRANSFER dbo.messages


GO


IF EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.TABLES  
	WHERE TABLE_TYPE = 'BASE TABLE' 
	AND TABLE_SCHEMA = 'dbo' 
	AND TABLE_NAME = 'T_Benutzer' 
)
BEGIN
	EXECUTE('DROP TABLE dbo.T_Benutzer');
END 


GO 


CREATE TABLE dbo.T_Benutzer
(
	 BE_ID int IDENTITY(1,1) NOT NULL
	,BE_Name national character varying(1000) NULL
	,BE_Vorname national character varying(1000) NULL
	,BE_Language character varying(5) NULL
	,BE_User national character varying(1000) NULL
	-- ,BE_Hash character varying(32) NULL 
	-- ,BE_IsCOR_Hash character varying(32) NULL 
	 
	,BE_ActiveDirectoryUID uniqueidentifier NULL
	,BE_Domaene national character varying(255) NULL
	,BE_Email character varying(500) NULL
	,BE_Status int NULL 
	,BE_usePRT bit NULL
	,BE_useMOD bit NULL
	,BE_useNA bit NULL
	 
	,BE_Hash AS ( LOWER(CONVERT(varchar(32), HashBytes('MD5', LOWER(CAST(BE_User AS varchar(50)))), 2)) ) PERSISTED 
	,BE_IsCOR_Hash AS ( LOWER(CONVERT(varchar(32), HashBytes('MD5', 'IsCorUser'+ LOWER(BE_User)), 2)) ) PERSISTED 

	-- ,BE_Hash AS ( LOWER(SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('MD5', LOWER(BE_User))), 3, 32) )  ) PERSISTED 
	-- ,BE_IsCOR_Hash AS ( SUBSTRING(master.dbo.fn_varbintohexstr (HashBytes('MD5', 'IsCorUser' + lower(BE_User ))), 3, 32) ) PERSISTED 
	 
	,_BE_Label  AS 
	( 
		CASE 
			WHEN BE_Name like BE_Vorname THEN Be_Name 
			WHEN BE_Vorname like '' THEN BE_Name 
			ELSE ISNULL(UPPER(LEFT(BE_Vorname,(1))) + '. ', '') + BE_Name 
		END 
	) PERSISTED 
	,_BE_LCID  AS (CASE T_Benutzer.BE_Language WHEN 'FR' THEN 4108 WHEN 'IT' THEN 2064 WHEN 'EN' THEN 1033 ELSE 2055 END) PERSISTED NOT NULL 
	,CONSTRAINT PK_T_Benutzer PRIMARY KEY ( BE_ID ) 
); 


GO 


/*
SELECT  
	 MAX(LEN(SYSLANG_CultureName)) AS SYSLANG_CultureName -- 11 nicht eindeutig
	,MAX(LEN(SYSLANG_Name)) AS SYSLANG_Name  -- 11 nicht eindeutig
	,MAX(LEN(SYSLANG_IetfLanguageTag)) AS SYSLANG_IetfLanguageTag  -- 14 EINDEUTIG
	,MAX(LEN(SYSLANG_ThreeLetterISOLanguageName)) AS SYSLANG_ThreeLetterISOLanguageName -- 3 nicht eindeutig
	,MAX(LEN(SYSLANG_ThreeLetterWindowsLanguageName)) AS SYSLANG_ThreeLetterWindowsLanguageName -- 3 nicht eindeutig
FROM T_SYS_Language 


SELECT SYSLANG_ThreeLetterWindowsLanguageName
,COUNT(*) AS cnt 
FROM T_SYS_Language 
GROUP BY SYSLANG_ThreeLetterWindowsLanguageName
ORDER BY cnt DESC 


-- SELECT * FROM T_SYS_Language WHERE SYSLANG_IetfLanguageTag = '' SYSLANG_LCID=>127
-- SELECT * FROM T_SYS_Language WHERE SYSLANG_CultureName IS NULL -- exotic
-- SELECT * FROM T_SYS_Language WHERE SYSLANG_ThreeLetterISOLanguageName IS NULL  -- same exotic
-- SELECT * FROM T_SYS_Language WHERE SYSLANG_ThreeLetterWindowsLanguageName IS NULL  -- same exotic
*/

GO 



CREATE TABLE dbo.T_SYS_Language
(
	 SYSLANG_LCID int NOT NULL 
	,SYSLANG_CultureName national character varying(255) NULL 
	,SYSLANG_Name national character varying(255) NULL 
	,SYSLANG_IetfLanguageTag national character varying(255) NULL 
	,SYSLANG_TwoLetterISOLanguageName national character varying(255) NULL 
	,SYSLANG_ThreeLetterISOLanguageName national character varying(255) NULL 
	,SYSLANG_ThreeLetterWindowsLanguageName national character varying(255) NULL 
	,SYSLANG_EnglishName national character varying(255) NULL 
	,SYSLANG_NativeName national character varying(255) NULL 
	,SYSLANG_DisplayName national character varying(255) NULL 
	,SYSLANG_NativeCalendarName national character varying(255) NULL 
	,SYSLANG_FullDateTimePattern national character varying(255) NULL 
	,SYSLANG_RFC1123Pattern national character varying(255) NULL 
	,SYSLANG_SortableDateTimePattern national character varying(255) NULL 
	,SYSLANG_UniversalSortableDateTimePattern national character varying(255) NULL 
	,SYSLANG_DateSeparator national character varying(255) NULL 
	,SYSLANG_LongDatePattern national character varying(255) NULL 
	,SYSLANG_ShortDatePattern national character varying(255) NULL 
	,SYSLANG_LongTimePattern national character varying(255) NULL 
	,SYSLANG_ShortTimePattern national character varying(255) NULL 
	,SYSLANG_YearMonthPattern national character varying(255) NULL 
	,SYSLANG_MonthDayPattern national character varying(255) NULL 
	,SYSLANG_PMDesignator national character varying(255) NULL 
	,SYSLANG_AMDesignator national character varying(255) NULL 
	,SYSLANG_Calendar national character varying(255) NULL 
	,SYSLANG_IsNeutralCulture bit NULL 
	,SYSLANG_IsRightToLeft bit NULL 
	,SYSLANG_ParentLCID int NULL 
	,SYSLANG_ANSICodePage int NULL 
	,SYSLANG_EBCDICCodePage int NULL 
	,SYSLANG_MacCodePage int NULL 
	,SYSLANG_OEMCodePage int NULL 
	,SYSLANG_ListSeparator national character varying(255) NULL 
	,SYSLANG_NumberDecimalSeparator national character varying(255) NULL 
	,SYSLANG_NumberGroupSeparator national character varying(255) NULL 
	,SYSLANG_NumberNegativePattern national character varying(255) NULL 
	,SYSLANG_CurrencyDecimalSeparator national character varying(255) NULL 
	,SYSLANG_CurrencyGroupSeparator national character varying(255) NULL 
	,SYSLANG_CurrencySymbol national character varying(255) NULL 
	,SYSLANG_CurrencyNegativePattern national character varying(255) NULL 
	,SYSLANG_CurrencyPositivePattern national character varying(255) NULL 
	,SYSLANG_PercentDecimalSeparator national character varying(255) NULL 
	,SYSLANG_PercentGroupSeparator national character varying(255) NULL 
	,SYSLANG_PercentNegativePattern national character varying(255) NULL 
	,SYSLANG_PercentPositivePattern national character varying(255) NULL 
	,SYSLANG_CorUse bit NULL
	,CONSTRAINT PK_T_SYS_Language PRIMARY KEY ( SYSLANG_LCID ) 
);


GO

-- INSERT INTO server_mail.dbo.T_SYS_Language SELECT * FROM COR_Basic_Demo_V4.dbo.T_SYS_Language; 



-- ALTER TABLE dbo.T_Benutzer DROP COLUMN BE_Hash; 
-- ALTER TABLE dbo.T_Benutzer DROP COLUMN BE_IsCOR_Hash; 
-- ALTER TABLE dbo.T_Benutzer DROP COLUMN _BE_Label; 
-- ALTER TABLE dbo.T_Benutzer DROP COLUMN _BE_LCID; 

-- ALTER TABLE dbo.T_Benutzer ADD BE_Hash AS ( LOWER(CONVERT(varchar(32), HashBytes('MD5', LOWER(CAST(BE_User AS varchar(50)))), 2)) ) PERSISTED 
-- ALTER TABLE dbo.T_Benutzer ADD BE_IsCOR_Hash AS (LOWER(CONVERT(varchar(32), HashBytes('MD5','IsCorUser' + LOWER(CAST(BE_User AS varchar(50)))),(2)))) PERSISTED 
-- ALTER TABLE dbo.T_Benutzer ADD _BE_Label AS (CASE WHEN BE_Name LIKE BE_Vorname THEN Be_Name WHEN BE_Vorname LIKE '' THEN BE_Name ELSE ISNULL(UPPER(LEFT(BE_Vorname, 1)) + '. ', '') + BE_Name END) PERSISTED 
-- ALTER TABLE dbo.T_Benutzer ADD _BE_LCID AS (CASE T_Benutzer.BE_Language WHEN 'FR' THEN 4108 WHEN 'IT' THEN 2064 WHEN 'EN' THEN 1033 ELSE 2055 END) PERSISTED NOT NULL 



DELETE FROM dbo.T_Benutzer; 


SET IDENTITY_INSERT dbo.T_Benutzer ON 
GO


	DECLARE @foo TABLE 
	(
		BE_ID int NOT NULL,
		BE_Name nvarchar(1000) NULL,
		BE_Vorname nvarchar(1000) NULL,
		BE_Language varchar(5) NULL,
		BE_User nvarchar(1000) NULL,
		BE_Hash varchar(32) NULL,
		BE_ActiveDirectoryUID uniqueidentifier NULL,
		BE_Domaene nvarchar(255) NULL,
		BE_Email varchar(500) NULL,
		BE_Status int NULL, 
		BE_usePRT bit NULL,
		BE_useMOD bit NULL,
		BE_useNA bit NULL
	);

	INSERT INTO @foo 
	( 
		 BE_ID 
		,BE_Name 
		,BE_Vorname 
		,BE_Language 
		,BE_User 
		,BE_Hash 
		,BE_ActiveDirectoryUID 
		,BE_Domaene 
		,BE_Email 
		,BE_Status 
		,BE_usePRT 
		,BE_useMOD 
		,BE_useNA 
	) 
	VALUES (1, N'Noob', N'McNoobington', N'DE', N'noob.mcnoobington', N'84e1999d5794cf8c064e82e110ae3c49', NULL, NULL, NULL, 1, NULL, NULL, NULL);

		
	INSERT INTO @foo 
	( 
		 BE_ID 
		,BE_Name 
		,BE_Vorname 
		,BE_Language 
		,BE_User 
		,BE_Hash 
		,BE_ActiveDirectoryUID 
		,BE_Domaene 
		,BE_Email 
		,BE_usePRT 
		,BE_useMOD 
		,BE_useNA 
	) 
	VALUES (12435, N'Administrator', N'DE', N'DE', N'administrator', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

	-- INSERT INTO dbo.T_Benutzer(BE_ID, BE_Name, BE_Vorname, BE_Language, BE_User, BE_ActiveDirectoryUID, BE_Domaene, BE_Email, BE_Status, BE_usePRT, BE_useMOD, BE_useNA) VALUES (1, N'Noob', N'McNoobington', N'DE', N'noob.mcnoobington', NULL, NULL, 1, NULL, NULL, NULL, NULL); 
	-- INSERT INTO dbo.T_Benutzer(BE_ID, BE_Name, BE_Vorname, BE_Language, BE_User, BE_ActiveDirectoryUID, BE_Domaene, BE_Email, BE_Status, BE_usePRT, BE_useMOD, BE_useNA) VALUES (12435, N'Administrator', N'DE', N'DE', N'administrator', NULL, NULL, 1, NULL, NULL, NULL, NULL); 




	INSERT dbo.T_Benutzer
	(
		 BE_ID
		,BE_Name
		,BE_Vorname
		,BE_Language
		,BE_User
		-- ,BE_Hash
		,BE_ActiveDirectoryUID
		,BE_Domaene
		,BE_Email
		,BE_usePRT
		,BE_useMOD
		,BE_useNA
	) 
	SELECT 
		 BE_ID
		,BE_Name
		,BE_Vorname
		,BE_Language
		,BE_User
		-- ,BE_Hash
		,BE_ActiveDirectoryUID
		,BE_Domaene
		,BE_Email
		,BE_usePRT
		,BE_useMOD
		,BE_useNA
	FROM @foo





GO
SET IDENTITY_INSERT dbo.T_Benutzer OFF
GO



UPDATE T_Benutzer SET BE_Status = 1; 

GO


CREATE TABLE [dbo].[T_COR_Objekte](
	[OBJ_SO_UID] [uniqueidentifier] NULL,
	[OBJ_AO_UID] [uniqueidentifier] NULL,
	[OBJ_GRU_UID] [uniqueidentifier] NULL,
	[OBJ_GB_UID] [uniqueidentifier] NULL,
	[OBJ_TK_UID] [uniqueidentifier] NULL,
	[OBJ_GS_UID] [uniqueidentifier] NULL,
	[OBJ_RM_UID] [uniqueidentifier] NULL,
	[OBJ_AP_UID] [uniqueidentifier] NULL,
	[OBJ_MO_UID] [uniqueidentifier] NULL,
	[OBJ_IN_UID] [uniqueidentifier] NULL,
	[OBJ_DO_UID] [uniqueidentifier] NULL,
	[OBJ_AL_UID] [uniqueidentifier] NULL,
	[OBJ_SH_UID] [uniqueidentifier] NULL,
	[OBJ_KU_UID] [uniqueidentifier] NULL,
	[OBJ_KM_UID] [uniqueidentifier] NULL,
	[OBJ_TR_UID] [uniqueidentifier] NULL,
	[OBJ_PP_UID] [uniqueidentifier] NULL,
	[OBJ_FZ_UID] [uniqueidentifier] NULL,
	[OBJ_ZYL_UID] [uniqueidentifier] NULL,
	[OBJ_SLG_UID] [uniqueidentifier] NULL,
	[OBJ_SLB_UID] [uniqueidentifier] NULL,
	[OBJ_ZN_UID] [uniqueidentifier] NULL,
	[OBJ_BU_UID] [uniqueidentifier] NULL,
	[OBJ_Parent_UID] [uniqueidentifier] NULL,
	[OBJ_Parent_SO_UID] [uniqueidentifier] NULL,
	[OBJ_Parent_GB_UID] [uniqueidentifier] NULL,
	[OBJ_Parent_TK_UID] [uniqueidentifier] NULL,
	[OBJ_Parent_GS_UID] [uniqueidentifier] NULL,
	[OBJ_Parent_RM_UID] [uniqueidentifier] NULL,
	[OBJ_UID] [uniqueidentifier] NOT NULL,
	[OBJ_Label]  AS (ltrim(rtrim(isnull(nullif([OBJ_Nr],''),'')+isnull(' '+nullif([OBJ_Bezeichnung],''),'')))) PERSISTED,
	[OBJ_OBJT_Code] [varchar](50) NOT NULL,
	[OBJ_Nr] [varchar](500) NULL,
	[OBJ_Bezeichnung] [varchar](500) NULL,
	[OBJ_DatumVon] [datetime] NULL,
	[OBJ_DatumBis] [datetime] NULL,
	[OBJ_ApertureObjID] [varchar](30) NULL,
	[OBJ_dateCreated] [datetime] NOT NULL,
	[OBJ_usePRT]  AS (CONVERT([bit],case when NOT [OBJ_AL_UID] IS NULL then (1) when NOT [OBJ_AO_UID] IS NULL then (1) when NOT [OBJ_AP_UID] IS NULL then (1) when NOT [OBJ_BU_UID] IS NULL then (1) when NOT [OBJ_DO_UID] IS NULL then (1) when NOT [OBJ_FZ_UID] IS NULL then (1) when NOT [OBJ_GB_UID] IS NULL then (1) when NOT [OBJ_GRU_UID] IS NULL then (1) when NOT [OBJ_GS_UID] IS NULL then (1) when NOT [OBJ_IN_UID] IS NULL then (1) when NOT [OBJ_KM_UID] IS NULL then (1) when NOT [OBJ_KU_UID] IS NULL then (1) when NOT [OBJ_MO_UID] IS NULL then (1) when NOT [OBJ_PP_UID] IS NULL then (1) when NOT [OBJ_RM_UID] IS NULL then (1) when NOT [OBJ_SH_UID] IS NULL then (1) when NOT [OBJ_SLG_UID] IS NULL then (1) when NOT [OBJ_SLB_UID] IS NULL then (1) when NOT [OBJ_SO_UID] IS NULL then (1) when NOT [OBJ_TK_UID] IS NULL then (1) when NOT [OBJ_TR_UID] IS NULL then (1) when NOT [OBJ_ZN_UID] IS NULL then (1) when NOT [OBJ_ZYL_UID] IS NULL then (1) else (0) end,0)) PERSISTED,
	[OBJ_GB_GK_UID] [uniqueidentifier] NULL,
	[OBJ_GS_GST_UID] [uniqueidentifier] NULL,
	[OBJ_RM_NA_UID] [uniqueidentifier] NULL,
	[OBJ_AL_AK_UID] [uniqueidentifier] NULL,
	[OBJ_AO_AOKAT_UID] [uniqueidentifier] NULL,
	[OBJ_AP_APK_UID] [uniqueidentifier] NULL,
	[OBJ_KM_KMKAT_UID] [uniqueidentifier] NULL,
	[OBJ_KU_KKAT_UID] [uniqueidentifier] NULL,
	[OBJ_MO_MKAT_UID] [uniqueidentifier] NULL,
	[OBJ_PP_PK_UID] [uniqueidentifier] NULL,
	[OBJ_TR_TT_UID] [uniqueidentifier] NULL,
	[OBJ_ZYL_ZKAT_UID] [uniqueidentifier] NULL,
	[OBJ_DO_DKAT_UID] [uniqueidentifier] NULL,
	[OBJ_IN_IKAT_UID] [uniqueidentifier] NULL,
	[OBJ_SH_SKAT_UID] [uniqueidentifier] NULL,
	[OBJ_ZN_ZKAT_UID] [uniqueidentifier] NULL,
	[OBJ_SLG_SKAT_UID] [uniqueidentifier] NULL,
	[OBJ_OBJK_UID]  AS (coalesce([OBJ_GB_GK_UID],[OBJ_GS_GST_UID],[OBJ_RM_NA_UID],[OBJ_AL_AK_UID],[OBJ_AO_AOKAT_UID],[OBJ_AP_APK_UID],[OBJ_KM_KMKAT_UID],[OBJ_KU_KKAT_UID],[OBJ_MO_MKAT_UID],[OBJ_PP_PK_UID],[OBJ_TR_TT_UID],[OBJ_ZYL_ZKAT_UID],[OBJ_DO_DKAT_UID],[OBJ_IN_IKAT_UID],[OBJ_SH_SKAT_UID],[OBJ_ZN_ZKAT_UID],[OBJ_SLG_SKAT_UID])),
 CONSTRAINT [PK_T_COR_Objekte] PRIMARY KEY ( [OBJ_UID] ,[OBJ_OBJT_Code] )
) ;



GO



CREATE TABLE [dbo].[T_TM_Tasks]
(
	[TSK_UID] [uniqueidentifier] NOT NULL,
	[TSK_MDT_ID] [int] NULL,
	[TSK_OBJT_UID] [uniqueidentifier] NULL,
	[TSK_Nr] [varchar](25) NULL,
	[TSK_Beschreibung] [varchar](255) NULL,
	[TSK_TerminVon] [datetime] NULL,
	[TSK_TerminBis] [datetime] NULL,
	[TSK_Kosten] [float] NOT NULL,
	[TSK_Bemerkung] [varchar](max) NULL,
	[TSK_Status] [int] NOT NULL,
	[TSK_ErfDate] [datetime] NOT NULL,
	[TSK_MutUser] [varchar](50) NULL,
	[TSK_MutDate] [datetime] NULL,
	[TSK_TPRI_UID] [uniqueidentifier] NULL,
	[TSK_TART_UID] [uniqueidentifier] NOT NULL,
	[TSK_TSTA_UID] [uniqueidentifier] NULL,
	[TSK_ADR_UID_zustaendig] [uniqueidentifier] NULL,
	[TSK_TPL_UID] [uniqueidentifier] NULL,
	[TSK_TPL_PlanungVon] [datetime] NULL,
	[TSK_TPL_PlanungBis] [datetime] NULL,
	[TSK_VWS_IsVWS] [bit] NOT NULL,
	[TSK_VWS_FormID] [varchar](36) NULL,
	[TSK_SO_UID] [uniqueidentifier] NULL,
	[TSK_GB_UID] [uniqueidentifier] NULL,
	[TSK_TK_UID] [uniqueidentifier] NULL,
	[TSK_GS_UID] [uniqueidentifier] NULL,
	[TSK_RM_UID] [uniqueidentifier] NULL,
	[TSK_TR_UID] [uniqueidentifier] NULL,
	[TSK_AL_UID] [uniqueidentifier] NULL,
	[TSK_KU_UID] [uniqueidentifier] NULL,
	[TSK_MO_UID] [uniqueidentifier] NULL,
	[TSK_PP_UID] [uniqueidentifier] NULL,
	[TSK_AP_UID] [uniqueidentifier] NULL,
	[TSK_SH_UID] [uniqueidentifier] NULL,
	[TSK_ADR_UID] [uniqueidentifier] NULL,
	[TSK_VTR_UID] [uniqueidentifier] NULL,
	[TSK_KT_UID] [uniqueidentifier] NULL,
	[TSK_BE_ID_erfasser] [int] NULL,
	[TSK_BE_ID_verantwortlich] [int] NULL,
	[TSK_ErledigtAm] [datetime] NULL,
	[TSK_DO_UID] [uniqueidentifier] NULL,
	[TSK_IN_UID] [uniqueidentifier] NULL,
	[TSK_KM_UID] [uniqueidentifier] NULL,
	[TSK_TCL_UID] [uniqueidentifier] NULL,
	[TSK_AO_UID] [uniqueidentifier] NULL,
	[TSK_TSK_UID] [uniqueidentifier] NULL,
	[TSK_ZYL_UID] [uniqueidentifier] NULL,
	[TSK_SLG_UID] [uniqueidentifier] NULL,
	[TSK_BP_UID] [uniqueidentifier] NULL,
	[TSK_ABT_UID] [uniqueidentifier] NULL,
	[TSK_IsStoerung] [bit] NOT NULL,
	[TSK_SM_Erfasser_Name] [varchar](100) NULL,
	[TSK_SM_Erfasser_Vorname] [varchar](100) NULL,
	[TSK_SM_Erfasser_Tel] [varchar](50) NULL,
	[TSK_SM_Erfasser_Email] [varchar](255) NULL,
	[TSK_ZN_UID] [uniqueidentifier] NULL,
	[TSK_Sort] [int] NULL,
	[TSK_FZ_UID] [uniqueidentifier] NULL,
	[TSK_BG_ID_verantwortlich] [int] NULL,
	[TSK_BU_UID] [uniqueidentifier] NULL,
	[TSK_IKS_Nr] [varchar](50) NULL,
	[TSK_ST_UID] [uniqueidentifier] NULL,
	[TSK_ST2_UID] [uniqueidentifier] NULL,
	[_TSK_OBJT_Code]  AS (case when NOT [TSK_SO_UID] IS NULL then 'SO' when NOT [TSK_GB_UID] IS NULL then 'GB' when NOT [TSK_GS_UID] IS NULL then 'GS' when NOT [TSK_TK_UID] IS NULL then 'TK' when NOT [TSK_RM_UID] IS NULL then 'RM' when NOT [TSK_TR_UID] IS NULL then 'TR' when NOT [TSK_AL_UID] IS NULL then 'AL' when NOT [TSK_KU_UID] IS NULL then 'KU' when NOT [TSK_MO_UID] IS NULL then 'MO' when NOT [TSK_PP_UID] IS NULL then 'PP' when NOT [TSK_AP_UID] IS NULL then 'AP' when NOT [TSK_SH_UID] IS NULL then 'SH' when NOT [TSK_ADR_UID] IS NULL then 'ADR' when NOT [TSK_VTR_UID] IS NULL then 'VTR' when NOT [TSK_KT_UID] IS NULL then 'KT' when NOT [TSK_DO_UID] IS NULL then 'DO' when NOT [TSK_IN_UID] IS NULL then 'IN' when NOT [TSK_KM_UID] IS NULL then 'KM' when NOT [TSK_AO_UID] IS NULL then 'AO' when NOT [TSK_ZYL_UID] IS NULL then 'ZYL' when NOT [TSK_ZN_UID] IS NULL then 'ZN' when NOT [TSK_FZ_UID] IS NULL then 'FZ' when NOT [TSK_BU_UID] IS NULL then 'BU'  end) PERSISTED,
	[_TSK_Nr]  AS (case when isnumeric([TSK_Nr])=(1) then replace(str([TSK_Nr],(6),(0)),' ','0') else [TSK_Nr] end) PERSISTED,
	[_TSK_OBJ_UID]  AS (coalesce([TSK_SO_UID],[TSK_GB_UID],[TSK_GS_UID],[TSK_TK_UID],[TSK_RM_UID],[TSK_TR_UID],[TSK_AL_UID],[TSK_KU_UID],[TSK_MO_UID],[TSK_PP_UID],[TSK_AP_UID],[TSK_SH_UID],[TSK_ADR_UID],[TSK_VTR_UID],[TSK_KT_UID],[TSK_DO_UID],[TSK_IN_UID],[TSK_KM_UID],[TSK_AO_UID],[TSK_ZYL_UID],[TSK_ZN_UID],[TSK_FZ_UID],[TSK_BU_UID],[TSK_ST_UID],[TSK_ST2_UID])) PERSISTED,
	[TSK_KOM_VTR_UID] [uniqueidentifier] NULL,
	[TSK_KOM_InterneVerrechnung] [bit] NULL,
	[TSK_KOM_InterneVerrechnungMaterial] [bit] NULL,
	[TSK_KOM_ADR_UID] [uniqueidentifier] NULL,
	CONSTRAINT [PK_T_PS_Aufgaben] PRIMARY KEY ( [TSK_UID] )
); 

GO



INSERT INTO dbo.T_TM_Tasks
(
	 TSK_UID
	,TSK_MDT_ID
	,TSK_OBJT_UID
	,TSK_Nr
	,TSK_Beschreibung
	,TSK_TerminVon
	,TSK_TerminBis
	,TSK_Kosten
	,TSK_Bemerkung
	,TSK_Status
	,TSK_ErfDate
	,TSK_MutUser
	,TSK_MutDate
	,TSK_TPRI_UID
	,TSK_TART_UID
	,TSK_TSTA_UID
	,TSK_ADR_UID_zustaendig
	,TSK_TPL_UID
	,TSK_TPL_PlanungVon
	,TSK_TPL_PlanungBis
	,TSK_VWS_IsVWS
	,TSK_VWS_FormID
	,TSK_SO_UID
	,TSK_GB_UID
	,TSK_TK_UID
	,TSK_GS_UID
	,TSK_RM_UID
	,TSK_TR_UID
	,TSK_AL_UID
	,TSK_KU_UID
	,TSK_MO_UID
	,TSK_PP_UID
	,TSK_AP_UID
	,TSK_SH_UID
	,TSK_ADR_UID
	,TSK_VTR_UID
	,TSK_KT_UID
	,TSK_BE_ID_erfasser
	,TSK_BE_ID_verantwortlich
	,TSK_ErledigtAm
	,TSK_DO_UID
	,TSK_IN_UID
	,TSK_KM_UID
	,TSK_TCL_UID
	,TSK_AO_UID
	,TSK_TSK_UID
	,TSK_ZYL_UID
	,TSK_SLG_UID
	,TSK_BP_UID
	,TSK_ABT_UID
	,TSK_IsStoerung
	,TSK_SM_Erfasser_Name
	,TSK_SM_Erfasser_Vorname
	,TSK_SM_Erfasser_Tel
	,TSK_SM_Erfasser_Email
	,TSK_ZN_UID
	,TSK_Sort
	,TSK_FZ_UID
	,TSK_BG_ID_verantwortlich
	,TSK_BU_UID
	,TSK_IKS_Nr
	,TSK_ST_UID
	,TSK_ST2_UID
	,TSK_KOM_VTR_UID
	,TSK_KOM_InterneVerrechnung
	,TSK_KOM_InterneVerrechnungMaterial
	,TSK_KOM_ADR_UID
)
SELECT 
	'4e610f56-226b-48af-bc83-adf45131170d' AS TSK_UID -- uniqueidentifier
	,0 AS TSK_MDT_ID -- int
	,'50c2ff8b-c265-4049-b1a7-dbc852bd3fe2' AS TSK_OBJT_UID -- uniqueidentifier
	,'123' AS TSK_Nr -- varchar(25)
	,'Test' AS TSK_Beschreibung -- varchar(255)
	,'17530101' AS TSK_TerminVon -- datetime
	,'29991231' AS TSK_TerminBis -- datetime
	,100.23 AS TSK_Kosten -- float
	,NULL AS TSK_Bemerkung -- varchar(max)
	,1 AS TSK_Status -- int
	,CURRENT_TIMESTAMP AS TSK_ErfDate -- datetime
	,NULL AS TSK_MutUser -- varchar(50)
	,NULL AS TSK_MutDate -- datetime
	,NEWID() AS TSK_TPRI_UID -- uniqueidentifier
	,NEWID() AS TSK_TART_UID -- uniqueidentifier
	,NEWID() AS TSK_TSTA_UID -- uniqueidentifier
	,NULL AS TSK_ADR_UID_zustaendig -- uniqueidentifier
	,NULL AS TSK_TPL_UID -- uniqueidentifier
	,NULL AS TSK_TPL_PlanungVon -- datetime
	,NULL AS TSK_TPL_PlanungBis -- datetime
	,0 AS TSK_VWS_IsVWS -- bit
	,NULL AS TSK_VWS_FormID -- varchar(36)
	,NULL AS TSK_SO_UID -- uniqueidentifier
	,NULL AS TSK_GB_UID -- uniqueidentifier
	,NULL AS TSK_TK_UID -- uniqueidentifier
	,NULL AS TSK_GS_UID -- uniqueidentifier
	,NULL AS TSK_RM_UID -- uniqueidentifier
	,NULL AS TSK_TR_UID -- uniqueidentifier
	,'c4009949-a25d-4163-8325-0999092c1253' AS TSK_AL_UID -- uniqueidentifier
	,NULL AS TSK_KU_UID -- uniqueidentifier
	,NULL AS TSK_MO_UID -- uniqueidentifier
	,NULL AS TSK_PP_UID -- uniqueidentifier
	,NULL AS TSK_AP_UID -- uniqueidentifier
	,NULL AS TSK_SH_UID -- uniqueidentifier
	,NULL AS TSK_ADR_UID -- uniqueidentifier
	,NULL AS TSK_VTR_UID -- uniqueidentifier
	,NULL AS TSK_KT_UID -- uniqueidentifier
	,NULL AS TSK_BE_ID_erfasser -- int
	,NULL AS TSK_BE_ID_verantwortlich -- int
	,NULL AS TSK_ErledigtAm -- datetime
	,NULL AS TSK_DO_UID -- uniqueidentifier
	,NULL AS TSK_IN_UID -- uniqueidentifier
	,NULL AS TSK_KM_UID -- uniqueidentifier
	,NULL AS TSK_TCL_UID -- uniqueidentifier
	,NULL AS TSK_AO_UID -- uniqueidentifier
	,NULL AS TSK_TSK_UID -- uniqueidentifier
	,NULL AS TSK_ZYL_UID -- uniqueidentifier
	,NULL AS TSK_SLG_UID -- uniqueidentifier
	,NULL AS TSK_BP_UID -- uniqueidentifier
	,NULL AS TSK_ABT_UID -- uniqueidentifier
	,0 AS TSK_IsStoerung -- bit
	,NULL AS TSK_SM_Erfasser_Name -- varchar(100)
	,NULL AS TSK_SM_Erfasser_Vorname -- varchar(100)
	,NULL AS TSK_SM_Erfasser_Tel -- varchar(50)
	,NULL AS TSK_SM_Erfasser_Email -- varchar(255)
	,NULL AS TSK_ZN_UID -- uniqueidentifier
	,NULL AS TSK_Sort -- int
	,NULL AS TSK_FZ_UID -- uniqueidentifier
	,NULL AS TSK_BG_ID_verantwortlich -- int
	,NULL AS TSK_BU_UID -- uniqueidentifier
	,NULL AS TSK_IKS_Nr -- varchar(50)
	,NULL AS TSK_ST_UID -- uniqueidentifier
	,NULL AS TSK_ST2_UID -- uniqueidentifier
	,NULL AS TSK_KOM_VTR_UID -- uniqueidentifier
	,NULL AS TSK_KOM_InterneVerrechnung -- bit
	,NULL AS TSK_KOM_InterneVerrechnungMaterial -- bit
	,NULL AS TSK_KOM_ADR_UID -- uniqueidentifier
WHERE NOT EXISTS(SELECT * FROM T_TM_Tasks WHERE TSK_UID = '4E610F56-226B-48AF-BC83-ADF45131170D' )


GO 





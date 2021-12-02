
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
	,BE_usePRT bit NULL
	,BE_useMOD bit NULL
	,BE_useNA bit NULL
	 
	,BE_Hash AS ( LOWER(SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('MD5', LOWER(BE_User))), 3, 32) )  ) PERSISTED 
	,BE_IsCOR_Hash AS ( SUBSTRING(master.dbo.fn_varbintohexstr (HashBytes('MD5', 'IsCorUser' + lower(BE_User ))), 3, 32) ) PERSISTED 
	 
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
		,BE_usePRT 
		,BE_useMOD 
		,BE_useNA 
	) 
	VALUES (1, N'Noob', N'McNoobington', N'DE', N'noob.mcnoobington', N'84e1999d5794cf8c064e82e110ae3c49', NULL, NULL, NULL, NULL, NULL, NULL);


	INSERT dbo.T_Benutzer
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
	SELECT 
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
	FROM @foo





GO
SET IDENTITY_INSERT dbo.T_Benutzer OFF
GO


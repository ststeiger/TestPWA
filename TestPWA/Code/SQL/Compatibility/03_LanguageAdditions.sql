
-- ALTER TABLE dbo.T_SYS_Language ADD SYSLANG_NativeName_TitleCase nvarchar(255) NULL; 
-- ALTER TABLE dbo.T_SYS_Language ADD SYSLANG_Name_i18n nvarchar(513) NULL; 
-- ALTER TABLE dbo.T_SYS_Language ADD SYSLANG_Sortable_i18n nvarchar(513) NULL; 
-- GO 
-- UPDATE T_SYS_Language SET SYSLANG_NativeName_TitleCase = UPPER(SUBSTRING(SYSLANG_NativeName, 1, 1) ) + SUBSTRING(SYSLANG_NativeName, 2, 10000); 
-- UPDATE T_SYS_Language SET SYSLANG_Name_i18n = CASE WHEN NULLIF(SYSLANG_NativeName_TitleCase, '') IS NULL THEN SYSLANG_EnglishName ELSE SYSLANG_NativeName_TitleCase + N' <' + SYSLANG_EnglishName + N'>' END 
-- UPDATE T_SYS_Language SET SYSLANG_Sortable_i18n = SYSLANG_EnglishName + COALESCE(N' <' + SYSLANG_NativeName_TitleCase  + N'>', '')  


SELECT 
	 SYSLANG_LCID
	,SYSLANG_ParentLCID 
	,SYSLANG_IetfLanguageTag
	,SYSLANG_EnglishName	
	,SYSLANG_NativeName AS oldName 
	,SYSLANG_NativeName_TitleCase AS SYSLANG_NativeName 
	,SYSLANG_Name_i18n
	,SYSLANG_DisplayName
	-- ,UPPER(SUBSTRING(SYSLANG_NativeName,1, 1) ) + SUBSTRING(SYSLANG_NativeName,2, 10000) 
FROM T_SYS_Language 
WHERE (1=1) 
-- AND SYSLANG_LCID = 2055 
AND SYSLANG_ParentLCID = 127 
-- AND SYSLANG_CorUse = 1 
ORDER BY SYSLANG_EnglishName 



-- SELECT * FROM T_SYS_Language_DayNames WHERE SYSDAYS_SYSLANG_LCID = 2055 
-- SELECT * FROM T_SYS_Language_MonthNames WHERE SYSMONTHS_SYSLANG_LCID = 2055 

-- SELECT * FROM T_SYS_Language_MonthNames WHERE SYSMONTHS_SYSLANG_LCID = 4108 
-- SELECT * FROM T_SYS_Language_DayNames WHERE SYSDAYS_SYSLANG_LCID = 4108 


SELECT 
	 SYSLANG_LCID 
	,SYSLANG_IetfLanguageTag
	,SYSLANG_EnglishName	
	,SYSLANG_Name_i18n
	-- ,SYSLANG_NativeName_TitleCase 
	-- ,SYSLANG_Sortable_i18n
	-- ,SYSLANG_DisplayName 
	-- UPDATE T_SYS_Language SET SYSLANG_Name_i18n = 
FROM T_SYS_Language 
WHERE (1=1) 
-- AND SYSLANG_LCID = 2055 
AND SYSLANG_ParentLCID = 127 
-- AND SYSLANG_CorUse = 1 
ORDER BY SYSLANG_NativeName_TitleCase, SYSLANG_EnglishName 






SELECT * FROM T_SYS_Language WHERE SYSLANG_CorUse = 1 FOR JSON PATH

SELECT * FROM T_SYS_Language_DayNames WHERE SYSDAYS_SYSLANG_LCID IN (SELECT SYSLANG_LCID FROM T_SYS_Language WHERE SYSLANG_CorUse = 1) FOR JSON PATH

SELECT * FROM T_SYS_Language_MonthNames WHERE SYSMONTHS_SYSLANG_LCID IN (SELECT SYSLANG_LCID FROM T_SYS_Language WHERE SYSLANG_CorUse = 1) FOR JSON PATH




SELECT 
	 SYSLANG_LCID AS id 
	,SYSLANG_Name_i18n AS txt 
	-- ,ROW_NUMBER() OVER (ORDER BY SYSLANG_NativeName_TitleCase) AS rn 
FROM T_SYS_Language 
WHERE (1=1) 
-- AND SYSLANG_LCID = 2055 
AND 
(
	   (SYSLANG_ParentLCID = SYSLANG_LCID) 
	OR (SYSLANG_ParentLCID = 127) 
	-- OR SYSLANG_LCID = 4 -- Chinese (Simplified)
	-- OR SYSLANG_LCID = 31748 -- Chinese (Traditional)
)
AND SYSLANG_LCID <> 127 -- Invariant Language (Invariant Country)

-- AND SYSLANG_CorUse = 1 
ORDER BY SYSLANG_NativeName_TitleCase, SYSLANG_EnglishName 
-- FOR JSON PATH 



--------------------------



SELECT 
	 SYSLANG_LCID AS v 
	,SYSLANG_Name_i18n AS t 
	-- ,SYSLANG_ParentLCID, SYSLANG_LCID 
	-- ,ROW_NUMBER() OVER (ORDER BY SYSLANG_NativeName_TitleCase) AS rn 
FROM T_SYS_Language 
WHERE (1=1) 
-- AND SYSLANG_LCID = 2055 
AND 
(
	   (SYSLANG_ParentLCID = SYSLANG_LCID) 
	OR (SYSLANG_ParentLCID = 127) 
	-- OR SYSLANG_LCID = 4 -- Chinese (Simplified)
	-- OR SYSLANG_LCID = 31748 -- Chinese (Traditional)
	-- OR (SYSLANG_ParentLCID IS NULL) 
)
AND SYSLANG_LCID NOT IN 
(
	 127 -- Invariant Language (Invariant Country)
	 ,62 -- Bahasa Malaysia <Malay> ==> Bahasa Indonesia <Indonesian>
	,1072 -- Sotho (South Africa) ==> instead Sesotho sa Leboa (South Africa)
	,1139 -- Tigrinya (Ethiopia) ==> Tigrinya (Eritrea)  
	,2072 -- Romanian (Moldova)  ==> Romanian (Romania)
	,2080 -- Urdu ==>Urdu (Islamic Republic of Pakistan)
	,2098 -- Setswana (Botswana)   ==> Setswana (South Africa)
	,2107 -- Davvisámegiella (Ruoŧŧa) <Sami (Northern) (Sweden)> ==> Davvisámegiella (Norga) <Sami (Northern) (Norway)>
	,2145 -- Nepali (India)   ==> Nepali (Nepal) 
	,2155 -- Runasimi (Ecuador Suyu) <Quechua (Ecuador)> ==> Runasimi (Bolivia Suyu) <Quechua (Bolivia)>
	,2128 -- ᠮᠤᠨᠭᠭᠤᠯ ᠬᠡᠯᠡ (ᠪᠦᠭᠦᠳᠡ ᠨᠠᠢᠷᠠᠮᠳᠠᠬᠤ ᠳᠤᠮᠳᠠᠳᠤ ᠠᠷᠠᠳ ᠣᠯᠣᠰ) <Mongolian (Traditional Mongolian) (People's Republic of China)> ==> Mongolian (Cyrillic, Mongolia)
	,3131 -- Davvisámegiella (Suopma) <Sami (Northern) (Finland)> ==> Davvisámegiella (Norga) <Sami (Northern) (Norway)> 
	,3152 -- Mongolian (Traditional Mongolian, Mongolia) ==> Mongolian (Cyrillic, Mongolia)
	,3179 -- Runasimi (Peru Suyu) <Quechua (Peru)> ==> Runasimi (Bolivia Suyu) <Quechua (Bolivia)>
	,4191 -- Central Atlas Tamazight (Tifi nagh, Morocco) ==> Tamazight (Latin) (Algeria) 
	,5179 -- Julevusámegiella (Svierik) <Sami (Lule) (Sweden)> ==> Julevusámegiella (Vuodna) <Sami (Lule) (Norway)> 
	,7227 -- Åarjelsaemiengiele (Sveerje) ==> Åarjelsaemiengiele (Nöörje) <Sami (Southern) (Norway)>
	,8251 -- Sääm´ǩiõll (Lää´ddjânnam) <Sami (Skolt) (Finland)> ==> Sämikielâ (Suomâ) <Sami (Inari) (Finland)>

	,8204 -- French => French (France)
	,9228 -- French => French (France)
	,10252 -- French => French (France)
	,11276 -- French => French (France)
	,12300 -- French => French (France)
	,13324 -- French => French (France)
	,14348 -- French => French (France)
	,15372 -- French => French (France)
	,15369 -- English (Hong Kong)  => English (United States)
	,22538 -- Latin American Spanish   => Spanish (Spain)
	-- ,2051 -- Valencian (Spain)  => Spanish (Spain)
	,1156 -- Alsatian (France) ==> French/German
	,1134 -- Lëtzebuergesch (Luxembourg) <Luxembourgish (Luxembourg)>

	,31770 -- Srpski <Serbian> ==> 10266 -- Српски (Србија)
	,6170 -- Srpski (Bosna i Hercegovina) ==> Srpski <Serbian>
	,11290 --Srpski (Crna Gora) ==> Srpski <Serbian>
	,9242 --Srpski (Srbija) ==> Srpski <Serbian>
	,7194 -- Српски (Босна и Херцеговина)
	-- ,10266 -- Српски (Србија)
	,12314 -- Српски (Црна Гора)
	,8218 -- Босански (Босна и Херцеговина) <Bosnian (Cyrillic) (Bosnia and Herzegovina)> ==> Bosnian (Latin) (Bosnia and Herzegovina)

	,2117 -- বাংলা (বাংলাদেশ) <Bengali (Bangladesh)> ==> Bengali (India)

) 
-- AND SYSLANG_ParentLCID IS NULL
-- AND SYSLANG_Name_i18n LIKE '%sami%'

ORDER BY SYSLANG_Name_i18n, SYSLANG_EnglishName 
-- FOR JSON PATH 



--------------------------




-- SELECT * FROM T_SYS_Language WHERE SYSLANG_LCID = 127
-- SELECT * FROM T_SYS_Language_DayNames WHERE SYSDAYS_SYSLANG_LCID = 127
-- SELECT * FROM T_SYS_Language_MonthNames WHERE SYSMONTHS_SYSLANG_LCID = 127 




SELECT 
	 COLUMN_NAME
	,IS_NULLABLE
	,DATA_TYPE
	,CHARACTER_MAXIMUM_LENGTH
	,COLUMN_NAME 
	+ CASE WHEN IS_NULLABLE = 'NO' THEN '' ELSE '?' END 
	+': ' 
	+ CASE 
	      WHEN DATA_TYPE = 'nvarchar' THEN 'string' 
		  WHEN DATA_TYPE = 'int' THEN 'number' 
		  WHEN DATA_TYPE = 'bit' THEN 'boolean' 
		  ELSE NULL -- 'UNKNOWN' 
	  END 
	+ '; '
	AS ts 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'T_SYS_Language' 
ORDER BY ORDINAL_POSITION 




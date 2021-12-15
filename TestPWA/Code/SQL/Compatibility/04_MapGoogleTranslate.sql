
;WITH GTRANSLATE AS 
(
			  SELECT 'Afrikaans' AS goog
	UNION ALL SELECT 'Albanian'
	UNION ALL SELECT 'Amharic'
	UNION ALL SELECT 'Arabic'
	UNION ALL SELECT 'Armenian'
	UNION ALL SELECT 'Azerbaijani' -- Azeri (Latin, Azerbaijan) ,Azeri (Cyrillic, Azerbaijan)
	UNION ALL SELECT 'Basque'
	UNION ALL SELECT 'Belarusian'
	UNION ALL SELECT 'Bengali'
	UNION ALL SELECT 'Bosnian'
	UNION ALL SELECT 'Bulgarian'
	UNION ALL SELECT 'Catalan'
	UNION ALL SELECT 'Cebuano'
	UNION ALL SELECT 'Chichewa'
	UNION ALL SELECT 'Chinese'
	UNION ALL SELECT 'Corsican'
	UNION ALL SELECT 'Croatian'
	UNION ALL SELECT 'Czech'
	UNION ALL SELECT 'Danish'
	UNION ALL SELECT 'Dutch'
	UNION ALL SELECT 'English'
	UNION ALL SELECT 'Esperanto'
	UNION ALL SELECT 'Estonian'
	UNION ALL SELECT 'Filipino'
	UNION ALL SELECT 'Finnish'
	UNION ALL SELECT 'French'
	UNION ALL SELECT 'Frisian'
	UNION ALL SELECT 'Galician'
	UNION ALL SELECT 'Georgian'
	UNION ALL SELECT 'German'
	UNION ALL SELECT 'Greek'
	UNION ALL SELECT 'Gujarati'
	UNION ALL SELECT 'Haitian Creole' -- French (Haiti)   
	UNION ALL SELECT 'Hausa'
	UNION ALL SELECT 'Hawaiian'
	UNION ALL SELECT 'Hebrew'
	UNION ALL SELECT 'Hindi'
	UNION ALL SELECT 'Hmong'
	UNION ALL SELECT 'Hungarian'
	UNION ALL SELECT 'Icelandic'
	UNION ALL SELECT 'Igbo'
	UNION ALL SELECT 'Indonesian'
	UNION ALL SELECT 'Irish'
	UNION ALL SELECT 'Italian'
	UNION ALL SELECT 'Japanese'
	UNION ALL SELECT 'Javanese'
	UNION ALL SELECT 'Kannada'
	UNION ALL SELECT 'Kazakh'
	UNION ALL SELECT 'Khmer'
	UNION ALL SELECT 'Kinyarwanda'
	UNION ALL SELECT 'Korean'
	UNION ALL SELECT 'Kurdish (Kurmanji)' -- Central Kurdish (Iraq)   
	UNION ALL SELECT 'Kyrgyz'
	UNION ALL SELECT 'Lao'
	UNION ALL SELECT 'Latin'
	UNION ALL SELECT 'Latvian'
	UNION ALL SELECT 'Lithuanian'
	UNION ALL SELECT 'Luxembourgish'
	UNION ALL SELECT 'Macedonian'
	UNION ALL SELECT 'Malagasy'
	UNION ALL SELECT 'Malay'
	UNION ALL SELECT 'Malayalam'
	UNION ALL SELECT 'Maltese'
	UNION ALL SELECT 'Maori'
	UNION ALL SELECT 'Marathi'
	UNION ALL SELECT 'Mongolian'
	UNION ALL SELECT 'Myanmar (Burmese)' -- Burmese (Myanmar)  
	UNION ALL SELECT 'Nepali'
	UNION ALL SELECT 'Norwegian'
	UNION ALL SELECT 'Odia (Oriya)'
	UNION ALL SELECT 'Pashto'
	UNION ALL SELECT 'Persian'
	UNION ALL SELECT 'Polish'
	UNION ALL SELECT 'Portuguese'
	UNION ALL SELECT 'Punjabi'
	UNION ALL SELECT 'Romanian'
	UNION ALL SELECT 'Russian'
	UNION ALL SELECT 'Samoan'
	UNION ALL SELECT 'Scots Gaelic' -- Scottish Gaelic (United Kingdom)
	UNION ALL SELECT 'Serbian'
	UNION ALL SELECT 'Sesotho'
	UNION ALL SELECT 'Shona'
	UNION ALL SELECT 'Sindhi'
	UNION ALL SELECT 'Sinhala'
	UNION ALL SELECT 'Slovak'
	UNION ALL SELECT 'Slovenian'
	UNION ALL SELECT 'Somali'
	UNION ALL SELECT 'Spanish'
	UNION ALL SELECT 'Sundanese'
	UNION ALL SELECT 'Swahili' -- Swahili, also known by its native name Kiswahili,
	UNION ALL SELECT 'Swedish'
	UNION ALL SELECT 'Tajik'
	UNION ALL SELECT 'Tamil'
	UNION ALL SELECT 'Tatar'
	UNION ALL SELECT 'Telugu'
	UNION ALL SELECT 'Thai'
	UNION ALL SELECT 'Turkish'
	UNION ALL SELECT 'Turkmen'
	UNION ALL SELECT 'Ukrainian'
	UNION ALL SELECT 'Urdu'
	UNION ALL SELECT 'Uyghur'
	UNION ALL SELECT 'Uzbek'
	UNION ALL SELECT 'Vietnamese'
	UNION ALL SELECT 'Welsh'
	UNION ALL SELECT 'Xhosa'
	UNION ALL SELECT 'Yiddish'
	UNION ALL SELECT 'Yoruba'
	UNION ALL SELECT 'Zulu'
)
SELECT 
	 goog
	,COALESCE(T_SYS_Language.SYSLANG_EnglishName, sys2.SYSLANG_EnglishName) AS MS  
	,COALESCE(T_SYS_Language.SYSLANG_LCID, sys2.SYSLANG_LCID) AS LCID
FROM GTRANSLATE 
LEFT JOIN T_SYS_Language 
	ON 
	(
		(
			T_SYS_Language.SYSLANG_EnglishName = GTRANSLATE.goog 
			AND 
			GTRANSLATE.goog NOT IN ('Bengali', 'Bosnian', 'Chinese') 
		)
		OR 
		( 
			('Azerbaijani' = GTRANSLATE.goog AND 'Azeri' = T_SYS_Language.SYSLANG_EnglishName) 
			OR 
			('Haitian Creole' = GTRANSLATE.goog AND 15372 = T_SYS_Language.SYSLANG_LCID) -- 15372: French (Haiti) 
			OR 
			('Kurdish (Kurmanji)' = GTRANSLATE.goog AND 1170 = T_SYS_Language.SYSLANG_LCID) -- 1170: Central Kurdish (Iraq) 
			OR 
			('Myanmar (Burmese)' = GTRANSLATE.goog AND 1109 = T_SYS_Language.SYSLANG_LCID) -- 1109: Burmese (Myanmar) 
			OR 
			('Scots Gaelic' = GTRANSLATE.goog AND 1169 = T_SYS_Language.SYSLANG_LCID) -- 1169: Scottish Gaelic (United Kingdom) 
			OR 
			('Chinese' = GTRANSLATE.goog AND 4 = T_SYS_Language.SYSLANG_LCID) -- 4: Chinese (Simplified) 
			OR 
			('Bosnian' = GTRANSLATE.goog AND 5146 = T_SYS_Language.SYSLANG_LCID) -- 5146: Bosnian (Latin) (Bosnia and Herzegovina) 
			OR 
			('Bengali' = GTRANSLATE.goog AND 1093 = T_SYS_Language.SYSLANG_LCID) -- 1093: Bengali (India) 
			OR 
			('Nepali' = GTRANSLATE.goog AND 1121 = T_SYS_Language.SYSLANG_LCID) -- 1121: Nepali (Nepal) 
			OR 
			('Swahili' = GTRANSLATE.goog AND 65 = T_SYS_Language.SYSLANG_LCID) -- 65: Kiswahili 
			
		)
	)

LEFT JOIN T_SYS_Language AS sys2 
	ON sys2.SYSLANG_EnglishName LIKE ('%' +GTRANSLATE.goog + '%') 
	AND T_SYS_Language.SYSLANG_LCID IS NULL 
	AND GTRANSLATE.goog NOT IN ('Latin', 'Swahili')

WHERE (1=1) 
-- AND COALESCE(T_SYS_Language.SYSLANG_EnglishName, sys2.SYSLANG_EnglishName) IS NULL 
-- AND goog NOT IN ('Azerbaijani', 'Haitian Creole', 'Kurdish (Kurmanji)', 'Myanmar (Burmese)', 'Scots Gaelic' ) -- have (Azerbaijani or Azeri)
AND goog NOT IN ('Cebuano', 'Chichewa', 'Esperanto', 'Hmong', 'Javanese', 'Latin', 'Malagasy', 'Odia (Oriya)', 'Samoan', 'Shona', 'Sundanese', 'Yiddish') -- have nots 
-- Chewa is a Bantu language spoken in much of Southern, Southeast and East Africa, namely the countries of Malawi and Zambia, where it is an official language, and Mozambique and Zimbabwe where it is a recognised minority language
-- Malagasy is an Austronesian language and the national language of Madagascar.
-- Shona is a Bantu language of the Shona people of Zimbabwe. 
-- Samoans are the indigenous Polynesian people of the Samoan Islands
-- Odia is an Indo-Aryan language spoken in the Indian state of Odisha. It is the official language in Odisha where native speakers make up 82% of the population, and it is also spoken in parts of West Bengal, Jharkhand and Chhattisgarh.
-- The Sundanese are a Southeast Asian ethnic group native to the western part of the island of Java in Indonesia. T

-- SELECT SYSLANG_ParentLCID, * FROM T_SYS_Language WHERE SYSLANG_EnglishName LIKE '%Amharic%'
-- SELECT SYSLANG_ParentLCID, * FROM T_SYS_Language WHERE SYSLANG_ParentLCID = 127
-- SELECT SYSLANG_ParentLCID, * FROM T_SYS_Language WHERE SYSLANG_ParentLCID = 4

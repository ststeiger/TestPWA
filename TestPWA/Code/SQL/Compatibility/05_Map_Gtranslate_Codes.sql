﻿-- https://cloud.google.com/translate/docs/languages
-- https://www.labnol.org/code/19899-google-translate-languages
-- https://sites.google.com/site/opti365/translate_codes
-- https://gist.github.com/JT5D/a2fdfefa80124a06f5a9
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
,CTE_GTRANSLATE_Code AS 
(
			  SELECT 'af' AS gt_code, 'Afrikaans' AS gt_name 
	UNION ALL SELECT 'ak', 'Akan'
	UNION ALL SELECT 'sq', 'Albanian'
	UNION ALL SELECT 'am', 'Amharic'
	UNION ALL SELECT 'ar', 'Arabic'
	UNION ALL SELECT 'hy', 'Armenian'
	UNION ALL SELECT 'az', 'Azerbaijani'
	UNION ALL SELECT 'eu', 'Basque'
	UNION ALL SELECT 'be', 'Belarusian'
	UNION ALL SELECT 'bem', 'Bemba'
	UNION ALL SELECT 'bn', 'Bengali'
	UNION ALL SELECT 'bh', 'Bihari'
	UNION ALL SELECT 'bs', 'Bosnian'
	UNION ALL SELECT 'br', 'Breton'
	UNION ALL SELECT 'bg', 'Bulgarian'
	UNION ALL SELECT 'km', 'Cambodian'
	UNION ALL SELECT 'ca', 'Catalan'
	UNION ALL SELECT 'chr', 'Cherokee'
	UNION ALL SELECT 'ny', 'Chichewa'
	UNION ALL SELECT 'zh-CN', 'Chinese (Simplified)'
	UNION ALL SELECT 'zh-TW', 'Chinese (Traditional)'
	UNION ALL SELECT 'co', 'Corsican'
	UNION ALL SELECT 'hr', 'Croatian'
	UNION ALL SELECT 'cs', 'Czech'
	UNION ALL SELECT 'da', 'Danish'
	UNION ALL SELECT 'nl', 'Dutch'
	UNION ALL SELECT 'xx-elmer', 'Elmer Fudd'
	UNION ALL SELECT 'en', 'English'
	UNION ALL SELECT 'eo', 'Esperanto'
	UNION ALL SELECT 'et', 'Estonian'
	UNION ALL SELECT 'ee', 'Ewe'
	UNION ALL SELECT 'fo', 'Faroese'
	UNION ALL SELECT 'tl', 'Filipino'
	UNION ALL SELECT 'fi', 'Finnish'
	UNION ALL SELECT 'fr', 'French'
	UNION ALL SELECT 'fy', 'Frisian'
	UNION ALL SELECT 'gaa', 'Ga'
	UNION ALL SELECT 'gl', 'Galician'
	UNION ALL SELECT 'ka', 'Georgian'
	UNION ALL SELECT 'de', 'German'
	UNION ALL SELECT 'el', 'Greek'
	UNION ALL SELECT 'gn', 'Guarani'
	UNION ALL SELECT 'gu', 'Gujarati'
	UNION ALL SELECT 'xx-hacker', 'Hacker'
	UNION ALL SELECT 'ht', 'Haitian Creole'
	UNION ALL SELECT 'ha', 'Hausa'
	UNION ALL SELECT 'haw', 'Hawaiian'
	UNION ALL SELECT 'iw', 'Hebrew'
	UNION ALL SELECT 'hi', 'Hindi'
	UNION ALL SELECT 'hu', 'Hungarian'
	UNION ALL SELECT 'is', 'Icelandic'
	UNION ALL SELECT 'ig', 'Igbo'
	UNION ALL SELECT 'id', 'Indonesian'
	UNION ALL SELECT 'ia', 'Interlingua'
	UNION ALL SELECT 'ga', 'Irish'
	UNION ALL SELECT 'it', 'Italian'
	UNION ALL SELECT 'ja', 'Japanese'
	UNION ALL SELECT 'jw', 'Javanese'
	UNION ALL SELECT 'kn', 'Kannada'
	UNION ALL SELECT 'kk', 'Kazakh'
	UNION ALL SELECT 'rw', 'Kinyarwanda'
	UNION ALL SELECT 'rn', 'Kirundi'
	UNION ALL SELECT 'xx-klingon', 'Klingon'
	UNION ALL SELECT 'kg', 'Kongo'
	UNION ALL SELECT 'ko', 'Korean'
	UNION ALL SELECT 'kri', 'Krio (Sierra Leone)'
	UNION ALL SELECT 'ku', 'Kurdish'
	UNION ALL SELECT 'ckb', 'Kurdish (Soranî)'
	UNION ALL SELECT 'ky', 'Kyrgyz'
	UNION ALL SELECT 'lo', 'Laothian'
	UNION ALL SELECT 'la', 'Latin'
	UNION ALL SELECT 'lv', 'Latvian'
	UNION ALL SELECT 'ln', 'Lingala'
	UNION ALL SELECT 'lt', 'Lithuanian'
	UNION ALL SELECT 'loz', 'Lozi'
	UNION ALL SELECT 'lg', 'Luganda'
	UNION ALL SELECT 'ach', 'Luo'
	UNION ALL SELECT 'mk', 'Macedonian'
	UNION ALL SELECT 'mg', 'Malagasy'
	UNION ALL SELECT 'ms', 'Malay'
	UNION ALL SELECT 'ml', 'Malayalam'
	UNION ALL SELECT 'mt', 'Maltese'
	UNION ALL SELECT 'mi', 'Maori'
	UNION ALL SELECT 'mr', 'Marathi'
	UNION ALL SELECT 'mfe', 'Mauritian Creole'
	UNION ALL SELECT 'mo', 'Moldavian'
	UNION ALL SELECT 'mn', 'Mongolian'
	UNION ALL SELECT 'sr-ME', 'Montenegrin'
	UNION ALL SELECT 'ne', 'Nepali'
	UNION ALL SELECT 'pcm', 'Nigerian Pidgin'
	UNION ALL SELECT 'nso', 'Northern Sotho'
	UNION ALL SELECT 'no', 'Norwegian'
	UNION ALL SELECT 'nn', 'Norwegian (Nynorsk)'
	UNION ALL SELECT 'oc', 'Occitan'
	UNION ALL SELECT 'or', 'Oriya'
	UNION ALL SELECT 'om', 'Oromo'
	UNION ALL SELECT 'ps', 'Pashto'
	UNION ALL SELECT 'fa', 'Persian'
	UNION ALL SELECT 'xx-pirate', 'Pirate'
	UNION ALL SELECT 'pl', 'Polish'
	UNION ALL SELECT 'pt-BR', 'Portuguese (Brazil)'
	UNION ALL SELECT 'pt-PT', 'Portuguese (Portugal)'
	UNION ALL SELECT 'pa', 'Punjabi'
	UNION ALL SELECT 'qu', 'Quechua'
	UNION ALL SELECT 'ro', 'Romanian'
	UNION ALL SELECT 'rm', 'Romansh'
	UNION ALL SELECT 'nyn', 'Runyakitara'
	UNION ALL SELECT 'ru', 'Russian'
	UNION ALL SELECT 'gd', 'Scots Gaelic'
	UNION ALL SELECT 'sr', 'Serbian'
	UNION ALL SELECT 'sh', 'Serbo-Croatian'
	UNION ALL SELECT 'st', 'Sesotho'
	UNION ALL SELECT 'tn', 'Setswana'
	UNION ALL SELECT 'crs', 'Seychellois Creole'
	UNION ALL SELECT 'sn', 'Shona'
	UNION ALL SELECT 'sd', 'Sindhi'
	UNION ALL SELECT 'si', 'Sinhalese'
	UNION ALL SELECT 'sk', 'Slovak'
	UNION ALL SELECT 'sl', 'Slovenian'
	UNION ALL SELECT 'so', 'Somali'
	UNION ALL SELECT 'es', 'Spanish'
	UNION ALL SELECT 'es-419', 'Spanish (Latin American)'
	UNION ALL SELECT 'su', 'Sundanese'
	UNION ALL SELECT 'sw', 'Swahili'
	UNION ALL SELECT 'sv', 'Swedish'
	UNION ALL SELECT 'tg', 'Tajik'
	UNION ALL SELECT 'ta', 'Tamil'
	UNION ALL SELECT 'tt', 'Tatar'
	UNION ALL SELECT 'te', 'Telugu'
	UNION ALL SELECT 'th', 'Thai'
	UNION ALL SELECT 'ti', 'Tigrinya'
	UNION ALL SELECT 'to', 'Tonga'
	UNION ALL SELECT 'lua', 'Tshiluba'
	UNION ALL SELECT 'tum', 'Tumbuka'
	UNION ALL SELECT 'tr', 'Turkish'
	UNION ALL SELECT 'tk', 'Turkmen'
	UNION ALL SELECT 'tw', 'Twi'
	UNION ALL SELECT 'ug', 'Uighur'
	UNION ALL SELECT 'uk', 'Ukrainian'
	UNION ALL SELECT 'ur', 'Urdu'
	UNION ALL SELECT 'uz', 'Uzbek'
	UNION ALL SELECT 'vi', 'Vietnamese'
	UNION ALL SELECT 'cy', 'Welsh'
	UNION ALL SELECT 'wo', 'Wolof'
	UNION ALL SELECT 'xh', 'Xhosa'
	UNION ALL SELECT 'yi', 'Yiddish'
	UNION ALL SELECT 'yo', 'Yoruba'
	UNION ALL SELECT 'zu', 'Zulu'

	-- New additions	
	UNION ALL SELECT 'ceb', 'Cebuano'
	UNION ALL SELECT 'zh', 'Chinese' -- zh-CN vs. zh-TW
	UNION ALL SELECT 'hmn ', 'Hmong'
	UNION ALL SELECT 'km ', 'Khmer'
	UNION ALL SELECT 'ku ', 'Kurdish (Kurmanji)'
	UNION ALL SELECT 'lo ', 'Lao'
	UNION ALL SELECT 'lb', 'Luxembourgish' 
	UNION ALL SELECT 'my', 'Myanmar (Burmese)'
	UNION ALL SELECT 'or', 'Odia (Oriya)' 
	UNION ALL SELECT 'pt ', 'Portuguese'
	UNION ALL SELECT 'sm ', 'Samoan'
	UNION ALL SELECT 'si ', 'Sinhala'
	UNION ALL SELECT 'ug ', 'Uyghur'
	
)
-- SELECT gt_name, gt_code FROM CTE_GTRANSLATE_Code 
SELECT 
	 GTRANSLATE.goog 
	,CTE_GTRANSLATE_Code.gt_code
FROM GTRANSLATE 

LEFT JOIN CTE_GTRANSLATE_Code 
	ON CTE_GTRANSLATE_Code.gt_name = GTRANSLATE.goog  

WHERE (1=1) 
-- AND gt_code IS NULL 

ORDER BY goog 


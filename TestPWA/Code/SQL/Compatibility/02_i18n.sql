
SELECT 
	 T_ChecklistElements.ELE_UID 
	,T_ChecklistElements.ELE_Parent_UID 
	,T_ChecklistElements.ELE_CL_UID 
	,T_ChecklistElements.ELE_TagName 
	,T_ChecklistElements.ELE_Level 
	,T_ChecklistElements.ELE_Sort 
	,T_ChecklistElements.ELE_RecSort 
	,COALESCE(NULLIF(T_ChecklistElements_i18n2.ELE_i18n2_InnerHtml, ''), NULLIF(T_ChecklistElements_i18n.ELE_i18n_InnerHtml, ''), T_ChecklistElements.ELE_InnerHtml) AS ELE_InnerHtml 
FROM T_ChecklistElements 

LEFT JOIN T_Benutzer 
	ON 
	( 
		CAST(T_Benutzer.BE_ID AS varchar(50)) = '84e1999d5794cf8c064e82e110ae3c49' 
		OR 
		T_Benutzer.BE_Hash = '84e1999d5794cf8c064e82e110ae3c49' 
	) 

LEFT JOIN T_ChecklistElements_i18n 
	ON T_ChecklistElements_i18n.ELE_i18n_ELE_UID = T_ChecklistElements.ELE_UID 
	AND T_ChecklistElements_i18n.ELE_i18n_SYSLANG_LCID = T_Benutzer._BE_LCID 

LEFT JOIN T_ChecklistElements_i18n2 
	ON T_ChecklistElements_i18n2.ELE_i18n2_ELE_UID = T_ChecklistElements.ELE_UID 
	AND T_ChecklistElements_i18n2.ELE_i18n2_SYSLANG_LCID = T_Benutzer._BE_LCID 

WHERE ELE_CL_UID = 'F1A2DD8A-2D11-496E-9B14-13559405089F' 


/*

SELECT 
	 ELE_UID 
	,ELE_Parent_UID 
	,ELE_CL_UID 
	,ELE_TagName 
	,ELE_Level 
	,ELE_Sort 
	,ELE_RecSort 
	,ELE_InnerHtml 
FROM T_ChecklistElements 
WHERE ELE_InnerHtml IS NOT NULL 
AND ELE_InnerHtml <> '<span><br></span>' 
AND ELE_InnerHtml <> '<span style="color: #F2F2F2;"><br></span>' 

*/

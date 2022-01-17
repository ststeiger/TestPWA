
-- Checklist2.GetChecklistData.sql
-- DECLARE @__cl_uid uniqueidentifier; 
-- DECLARE @__cls_uid uniqueidentifier; 
-- SET @__cl_uid = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
-- SET @__cls_uid = '70B427DB-2F7C-4DA3-83CF-BAEBFD4AB0D0'; 


IF @__cl_uid IS NULL 
BEGIN
	SET @__cl_uid = (
		SELECT TOP 1 T_ChecklistVersion.CLV_CL_UID 
		FROM T_Checklist_ZO_SavedDataSet 
		LEFT JOIN T_ChecklistVersion ON T_ChecklistVersion.CLV_UID = T_Checklist_ZO_SavedDataSet.CLS_CLV_UID 
		WHERE T_Checklist_ZO_SavedDataSet.CLS_UID = @__cls_uid 
	)
END 


IF @__cls_uid IS NULL 
BEGIN
	SET @__cls_uid = (
		SELECT TOP 1 T_Checklist_ZO_SavedDataSet.CLS_UID 
		FROM T_Checklist_ZO_SavedDataSet 
		LEFT JOIN T_ChecklistVersion ON T_ChecklistVersion.CLV_UID = T_Checklist_ZO_SavedDataSet.CLS_CLV_UID 
		WHERE T_ChecklistVersion.CLV_CL_UID = @__cl_uid 
	)
END 




DECLARE @internal_clv_uid uniqueidentifier; 
SET @internal_clv_uid = ( 
	SELECT TOP 1 CLV_UID 
	FROM T_ChecklistVersion 
	LEFT JOIN T_Checklist_ZO_SavedDataSet ON T_Checklist_ZO_SavedDataSet.CLS_CLV_UID = T_ChecklistVersion.CLV_UID 
	WHERE (1=1) 
	AND 
	(
		T_Checklist_ZO_SavedDataSet.CLS_UID = @__cls_uid 
		OR 
		( 
			@__cls_uid IS NULL 
			AND 
			CLV_CL_UID = @__cl_uid 
		) 
	) 
	ORDER BY CLV_Created  DESC
); 





SELECT 
	 T_Checklist.CL_UID 
	,T_Checklist.CL_Name 
	,T_Checklist.CL_Title 
FROM T_Checklist 
WHERE (1=1) 
AND CL_UID = @__cl_uid 
ORDER BY CL_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


SELECT 
	 T_ChecklistElements.ELE_UID 
	,T_ChecklistElements.ELE_Parent_UID 
	,T_ChecklistElements.ELE_CLV_UID 
	,T_ChecklistElements.ELE_TagName 
	,T_ChecklistElements.ELE_Level 
	,T_ChecklistElements.ELE_Sort 
	-- ,T_ChecklistElements.ELE_InnerHtml 

	,COALESCE
	( 
		 T_ChecklistElements_i18n2.ELE_i18n2_InnerHtml 
		,T_ChecklistElements_i18n.ELE_i18n_InnerHtml 
		,T_ChecklistElements.ELE_InnerHtml 
	) AS ELE_InnerHtml 
	 
	,CASE 
		WHEN T_ChecklistElements.ELE_InnerHtml = '<span><br></span>' THEN NULL 
		WHEN T_ChecklistElements.ELE_InnerHtml = '<span style="color: #F2F2F2;"><br></span>' THEN NULL 
		WHEN T_ChecklistElements.ELE_InnerHtml = '' THEN NULL 
		ELSE T_ChecklistElements.ELE_InnerHtml 
	 END AS ELE_InnerHtml2 
FROM T_ChecklistElements 

INNER JOIN T_Benutzer ON T_Benutzer.BE_ID = 12435 -- @BE_ID 

LEFT JOIN T_ChecklistElements_i18n 
	ON T_ChecklistElements_i18n.ELE_i18n_ELE_UID = T_ChecklistElements.ELE_UID 
	AND T_ChecklistElements_i18n.ELE_i18n_SYSLANG_LCID = T_Benutzer._BE_LCID 

LEFT JOIN T_ChecklistElements_i18n2 
	ON T_ChecklistElements_i18n2.ELE_i18n2_ELE_UID = T_ChecklistElements.ELE_UID 
	AND T_ChecklistElements_i18n2.ELE_i18n2_SYSLANG_LCID = T_Benutzer._BE_LCID 

WHERE (1=1) 
AND T_ChecklistElements.ELE_CLV_UID = @internal_clv_uid 
-- AND T_ChecklistElements.ELE_Level = 3 
ORDER BY ELE_Level, ELE_Sort 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


SELECT 
	 T_Checklist_ZO_ElementProperties.PRO_UID 
	,T_Checklist_ZO_ElementProperties.PRO_Name 
	,T_Checklist_ZO_ElementProperties.PRO_Value 
	,T_Checklist_ZO_ElementProperties.PRO_ELE_UID 
FROM T_Checklist_ZO_ElementProperties 
WHERE (1=1) 
AND T_Checklist_ZO_ElementProperties.PRO_ELE_UID IN 
(
	SELECT T_ChecklistElements.ELE_UID FROM T_ChecklistElements 
	WHERE T_ChecklistElements.ELE_CLV_UID = @internal_clv_uid 
) 
ORDER BY PRO_ELE_UID, PRO_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

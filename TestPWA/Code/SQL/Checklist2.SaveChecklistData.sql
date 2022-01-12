

-- DECLARE @__cls_uid uniqueidentifier; 
-- DECLARE @uuid uniqueidentifier; 
-- DECLARE @value national character varying(MAX); 
-- DECLARE @type national character varying(MAX); 

-- DELETE FROM T_Checklist_ZO_ElementValues; 

-- INSERT INTO T_Checklist_ZO_ElementValues( CLV_CLS_UID, CLV_ELE_UID, CLV_Value )
-- VALUES ( @__cls_uid, @uuid, @value); 



;WITH CTE AS 
( 
	SELECT @__cls_uid AS CLV_CLS_UID, @uuid AS CLV_ELE_UID, @value AS CLV_Value 
)
-- SELECT * FROM CTE; 
MERGE INTO dbo.T_Checklist_ZO_ElementValues AS A USING CTE 
	ON CTE.CLV_CLS_UID = A.CLV_CLS_UID 
	AND CTE.CLV_ELE_UID = A.CLV_ELE_UID 
WHEN MATCHED 
	THEN UPDATE
		SET  A.CLV_Value = CTE.CLV_Value
WHEN NOT MATCHED THEN 
INSERT 
( 
	 CLV_CLS_UID 
    ,CLV_ELE_UID 
    ,CLV_Value 
)
VALUES
(
	 CTE.CLV_CLS_UID 
	,CTE.CLV_ELE_UID 
    ,CTE.CLV_Value 
);		
-- SELECT * FROM T_Checklist_ZO_ElementValues 

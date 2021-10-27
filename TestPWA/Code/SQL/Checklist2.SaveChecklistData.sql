

-- DECLARE @__cls_uid uniqueidentifier; 
-- DECLARE @uuid uniqueidentifier; 
-- DECLARE @value national character varying(MAX); 
-- DECLARE @type national character varying(MAX); 

-- DELETE FROM T_Checklist_ZO_ElementValues; 

INSERT INTO T_Checklist_ZO_ElementValues( CLV_CLS_UID, CLV_ELE_UID, CLV_Value )
VALUES ( @__cls_uid, @uuid, @value); 

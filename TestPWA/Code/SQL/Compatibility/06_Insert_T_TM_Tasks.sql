
;WITH CTE AS 
(  
    SELECT TOP 1 
		 '4E610F56-226B-48AF-BC83-ADF45131170D' AS TSK_UID 
        ,tSource."TSK_MDT_ID" 
        ,tSource."TSK_OBJT_UID" 
        ,tSource."TSK_Nr" 
        ,tSource."TSK_Beschreibung" 
        ,tSource."TSK_TerminVon" 
        ,tSource."TSK_TerminBis" 
        ,tSource."TSK_Kosten" 
        ,tSource."TSK_Bemerkung" 
        ,tSource."TSK_Status" 
        ,tSource."TSK_ErfDate" 
        ,tSource."TSK_MutUser" 
        ,tSource."TSK_MutDate" 
        ,tSource."TSK_TPRI_UID" 
        ,tSource."TSK_TART_UID" 
        ,tSource."TSK_TSTA_UID" 
        ,tSource."TSK_ADR_UID_zustaendig" 
        ,tSource."TSK_TPL_UID" 
        ,tSource."TSK_TPL_PlanungVon" 
        ,tSource."TSK_TPL_PlanungBis" 
        ,tSource."TSK_VWS_IsVWS" 
        ,tSource."TSK_VWS_FormID" 
        ,tSource."TSK_SO_UID" 
        ,tSource."TSK_GB_UID" 
        ,tSource."TSK_TK_UID" 
        ,tSource."TSK_GS_UID" 
        ,tSource."TSK_RM_UID" 
        ,tSource."TSK_TR_UID" 
        ,tSource."TSK_AL_UID" 
        ,tSource."TSK_KU_UID" 
        ,tSource."TSK_MO_UID" 
        ,tSource."TSK_PP_UID" 
        ,tSource."TSK_AP_UID" 
        ,tSource."TSK_SH_UID" 
        ,tSource."TSK_ADR_UID" 
        ,tSource."TSK_VTR_UID" 
        ,tSource."TSK_KT_UID" 
        ,tSource."TSK_BE_ID_erfasser" 
        ,tSource."TSK_BE_ID_verantwortlich" 
        ,tSource."TSK_ErledigtAm" 
        ,tSource."TSK_DO_UID" 
        ,tSource."TSK_IN_UID" 
        ,tSource."TSK_KM_UID" 
        ,tSource."TSK_TCL_UID" 
        ,tSource."TSK_AO_UID" 
        ,tSource."TSK_TSK_UID" 
        ,tSource."TSK_ZYL_UID" 
        ,tSource."TSK_SLG_UID" 
        ,tSource."TSK_BP_UID" 
        ,tSource."TSK_ABT_UID" 
        ,tSource."TSK_IsStoerung" 
        ,tSource."TSK_SM_Erfasser_Name" 
        ,tSource."TSK_SM_Erfasser_Vorname" 
        ,tSource."TSK_SM_Erfasser_Tel" 
        ,tSource."TSK_SM_Erfasser_Email" 
        ,tSource."TSK_ZN_UID" 
        ,tSource."TSK_Sort" 
        ,tSource."TSK_FZ_UID" 
        ,tSource."TSK_BG_ID_verantwortlich" 
        ,tSource."TSK_BU_UID" 
        ,tSource."TSK_IKS_Nr" 
        ,tSource."TSK_ST_UID" 
        ,tSource."TSK_ST2_UID" 
        ,tSource."TSK_KOM_VTR_UID" 
        ,tSource."TSK_KOM_InterneVerrechnung" 
        ,tSource."TSK_KOM_InterneVerrechnungMaterial" 
        ,tSource."TSK_KOM_ADR_UID"
	FROM T_TM_Tasks AS tSource
	
    LEFT JOIN T_TM_Ref_TaskStatus ON T_TM_Ref_TaskStatus.TSTA_UID = tSource.TSK_TSTA_UID 
    -- REM: INNER JOIN ON FOREIGN KEYS should not be done here, because this removes entries with value "NULL" 

    WHERE (1=1) 

	-- AND T_TM_Ref_TaskStatus.TSTA_IsDone = 1
	AND T_TM_Ref_TaskStatus.TSTA_IsDone = 0
	-- AND T_TM_Ref_TaskStatus.TSTA_IsDone IS NULL 


    AND 
    ( 
        tSource."TSK_AL_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Anlage" AS tAlias000 
            WHERE (1=1) 
            AND tAlias000."AL_UID" = tSource."TSK_AL_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_AP_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Arbeitsplatz" AS tAlias001 
            WHERE (1=1) 
            AND tAlias001."AP_UID" = tSource."TSK_AP_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_AO_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Aussenobjekt" AS tAlias002 
            WHERE (1=1) 
            AND tAlias002."AO_UID" = tSource."TSK_AO_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_BU_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Buch" AS tAlias003 
            WHERE (1=1) 
            AND tAlias003."BU_UID" = tSource."TSK_BU_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_DO_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Dose" AS tAlias004 
            WHERE (1=1) 
            AND tAlias004."DO_UID" = tSource."TSK_DO_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_GB_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Gebaeude" AS tAlias005 
            WHERE (1=1) 
            AND tAlias005."GB_UID" = tSource."TSK_GB_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_GS_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Geschoss" AS tAlias006 
            WHERE (1=1) 
            AND tAlias006."GS_UID" = tSource."TSK_GS_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_IN_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Informatik" AS tAlias007 
            WHERE (1=1) 
            AND tAlias007."IN_UID" = tSource."TSK_IN_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_KM_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Kommunikation" AS tAlias008 
            WHERE (1=1) 
            AND tAlias008."KM_UID" = tSource."TSK_KM_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_KT_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Kontakte" AS tAlias009 
            WHERE (1=1) 
            AND tAlias009."KT_UID" = tSource."TSK_KT_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_KU_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Kunst" AS tAlias010 
            WHERE (1=1) 
            AND tAlias010."KU_UID" = tSource."TSK_KU_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_MO_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Mobiliar" AS tAlias011 
            WHERE (1=1) 
            AND tAlias011."MO_UID" = tSource."TSK_MO_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_PP_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Parkplatz" AS tAlias012 
            WHERE (1=1) 
            AND tAlias012."PP_UID" = tSource."TSK_PP_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_RM_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Raum" AS tAlias013 
            WHERE (1=1) 
            AND tAlias013."RM_UID" = tSource."TSK_RM_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_MDT_ID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Ref_Mandant" AS tAlias014 
            WHERE (1=1) 
            AND tAlias014."MDT_ID" = tSource."TSK_MDT_ID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_SLG_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Schluesselgruppe" AS tAlias015 
            WHERE (1=1) 
            AND tAlias015."SLG_UID" = tSource."TSK_SLG_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_SH_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Sicherheit" AS tAlias016 
            WHERE (1=1) 
            AND tAlias016."SH_UID" = tSource."TSK_SH_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_SO_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Standort" AS tAlias017 
            WHERE (1=1) 
            AND tAlias017."SO_UID" = tSource."TSK_SO_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_TK_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Trakt" AS tAlias018 
            WHERE (1=1) 
            AND tAlias018."TK_UID" = tSource."TSK_TK_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_TR_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Tuer" AS tAlias019 
            WHERE (1=1) 
            AND tAlias019."TR_UID" = tSource."TSK_TR_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_ZN_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Zone" AS tAlias020 
            WHERE (1=1) 
            AND tAlias020."ZN_UID" = tSource."TSK_ZN_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_ZYL_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AP_Zylinder" AS tAlias021 
            WHERE (1=1) 
            AND tAlias021."ZYL_UID" = tSource."TSK_ZYL_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_ADR_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AV_Adressen" AS tAlias022 
            WHERE (1=1) 
            AND tAlias022."ADR_UID" = tSource."TSK_ADR_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_KOM_ADR_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AV_Adressen" AS tAlias023 
            WHERE (1=1) 
            AND tAlias023."ADR_UID" = tSource."TSK_KOM_ADR_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_ADR_UID_zustaendig" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_AV_Adressen" AS tAlias024 
            WHERE (1=1) 
            AND tAlias024."ADR_UID" = tSource."TSK_ADR_UID_zustaendig" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_BE_ID_verantwortlich" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_Benutzer" AS tAlias025 
            WHERE (1=1) 
            AND tAlias025."BE_ID" = tSource."TSK_BE_ID_verantwortlich" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_BE_ID_erfasser" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_Benutzer" AS tAlias026 
            WHERE (1=1) 
            AND tAlias026."BE_ID" = tSource."TSK_BE_ID_erfasser" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_BG_ID_verantwortlich" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_Benutzergruppen" AS tAlias027 
            WHERE (1=1) 
            AND tAlias027."ID" = tSource."TSK_BG_ID_verantwortlich" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_OBJT_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_OV_Ref_ObjektTyp" AS tAlias028 
            WHERE (1=1) 
            AND tAlias028."OBJT_UID" = tSource."TSK_OBJT_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_ST_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_SM_Stoerung" AS tAlias029 
            WHERE (1=1) 
            AND tAlias029."ST_UID" = tSource."TSK_ST_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_ABT_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_TM_Ref_Abteilung" AS tAlias030 
            WHERE (1=1) 
            AND tAlias030."ABT_UID" = tSource."TSK_ABT_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_TCL_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_TM_Ref_Checkliste" AS tAlias031 
            WHERE (1=1) 
            AND tAlias031."TCL_UID" = tSource."TSK_TCL_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_TART_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_TM_Ref_TaskArt" AS tAlias032 
            WHERE (1=1) 
            AND tAlias032."TART_UID" = tSource."TSK_TART_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_TSTA_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_TM_Ref_TaskStatus" AS tAlias033 
            WHERE (1=1) 
            AND tAlias033."TSTA_UID" = tSource."TSK_TSTA_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_TPL_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_TM_Tasks_Planung" AS tAlias034 
            WHERE (1=1) 
            AND tAlias034."TPL_UID" = tSource."TSK_TPL_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_BP_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_UPS_BudgetPositionen" AS tAlias035 
            WHERE (1=1) 
            AND tAlias035."BP_UID" = tSource."TSK_BP_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_VTR_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_VM_Vertraege" AS tAlias036 
            WHERE (1=1) 
            AND tAlias036."VTR_UID" = tSource."TSK_VTR_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_KOM_VTR_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_VM_Vertraege" AS tAlias037 
            WHERE (1=1) 
            AND tAlias037."VTR_UID" = tSource."TSK_KOM_VTR_UID" 
        ) 
    ) 

    AND 
    ( 
        tSource."TSK_ST2_UID" IS NULL 
        OR EXISTS 
        ( 
            SELECT * FROM "dbo"."T_SM2_Stoerung" AS tAlias038 
            WHERE (1=1) 
            AND tAlias038."ST2_UID" = tSource."TSK_ST2_UID" 
        ) 
    ) 

) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_TM_Tasks AS A 
USING CTE ON CTE.TSK_UID = A.TSK_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.TSK_MDT_ID = CTE.TSK_MDT_ID 
            ,A.TSK_OBJT_UID = CTE.TSK_OBJT_UID 
            ,A.TSK_Nr = CTE.TSK_Nr 
            ,A.TSK_Beschreibung = CTE.TSK_Beschreibung 
            ,A.TSK_TerminVon = CTE.TSK_TerminVon 
            ,A.TSK_TerminBis = CTE.TSK_TerminBis 
            ,A.TSK_Kosten = CTE.TSK_Kosten 
            ,A.TSK_Bemerkung = CTE.TSK_Bemerkung 
            ,A.TSK_Status = CTE.TSK_Status 
            ,A.TSK_ErfDate = CTE.TSK_ErfDate 
            ,A.TSK_MutUser = CTE.TSK_MutUser 
            ,A.TSK_MutDate = CTE.TSK_MutDate 
            ,A.TSK_TPRI_UID = CTE.TSK_TPRI_UID 
            ,A.TSK_TART_UID = CTE.TSK_TART_UID 
            ,A.TSK_TSTA_UID = CTE.TSK_TSTA_UID 
            ,A.TSK_ADR_UID_zustaendig = CTE.TSK_ADR_UID_zustaendig 
            ,A.TSK_TPL_UID = CTE.TSK_TPL_UID 
            ,A.TSK_TPL_PlanungVon = CTE.TSK_TPL_PlanungVon 
            ,A.TSK_TPL_PlanungBis = CTE.TSK_TPL_PlanungBis 
            ,A.TSK_VWS_IsVWS = CTE.TSK_VWS_IsVWS 
            ,A.TSK_VWS_FormID = CTE.TSK_VWS_FormID 
            ,A.TSK_SO_UID = CTE.TSK_SO_UID 
            ,A.TSK_GB_UID = CTE.TSK_GB_UID 
            ,A.TSK_TK_UID = CTE.TSK_TK_UID 
            ,A.TSK_GS_UID = CTE.TSK_GS_UID 
            ,A.TSK_RM_UID = CTE.TSK_RM_UID 
            ,A.TSK_TR_UID = CTE.TSK_TR_UID 
            ,A.TSK_AL_UID = CTE.TSK_AL_UID 
            ,A.TSK_KU_UID = CTE.TSK_KU_UID 
            ,A.TSK_MO_UID = CTE.TSK_MO_UID 
            ,A.TSK_PP_UID = CTE.TSK_PP_UID 
            ,A.TSK_AP_UID = CTE.TSK_AP_UID 
            ,A.TSK_SH_UID = CTE.TSK_SH_UID 
            ,A.TSK_ADR_UID = CTE.TSK_ADR_UID 
            ,A.TSK_VTR_UID = CTE.TSK_VTR_UID 
            ,A.TSK_KT_UID = CTE.TSK_KT_UID 
            ,A.TSK_BE_ID_erfasser = CTE.TSK_BE_ID_erfasser 
            ,A.TSK_BE_ID_verantwortlich = CTE.TSK_BE_ID_verantwortlich 
            ,A.TSK_ErledigtAm = CTE.TSK_ErledigtAm 
            ,A.TSK_DO_UID = CTE.TSK_DO_UID 
            ,A.TSK_IN_UID = CTE.TSK_IN_UID 
            ,A.TSK_KM_UID = CTE.TSK_KM_UID 
            ,A.TSK_TCL_UID = CTE.TSK_TCL_UID 
            ,A.TSK_AO_UID = CTE.TSK_AO_UID 
            ,A.TSK_TSK_UID = CTE.TSK_TSK_UID 
            ,A.TSK_ZYL_UID = CTE.TSK_ZYL_UID 
            ,A.TSK_SLG_UID = CTE.TSK_SLG_UID 
            ,A.TSK_BP_UID = CTE.TSK_BP_UID 
            ,A.TSK_ABT_UID = CTE.TSK_ABT_UID 
            ,A.TSK_IsStoerung = CTE.TSK_IsStoerung 
            ,A.TSK_SM_Erfasser_Name = CTE.TSK_SM_Erfasser_Name 
            ,A.TSK_SM_Erfasser_Vorname = CTE.TSK_SM_Erfasser_Vorname 
            ,A.TSK_SM_Erfasser_Tel = CTE.TSK_SM_Erfasser_Tel 
            ,A.TSK_SM_Erfasser_Email = CTE.TSK_SM_Erfasser_Email 
            ,A.TSK_ZN_UID = CTE.TSK_ZN_UID 
            ,A.TSK_Sort = CTE.TSK_Sort 
            ,A.TSK_FZ_UID = CTE.TSK_FZ_UID 
            ,A.TSK_BG_ID_verantwortlich = CTE.TSK_BG_ID_verantwortlich 
            ,A.TSK_BU_UID = CTE.TSK_BU_UID 
            ,A.TSK_IKS_Nr = CTE.TSK_IKS_Nr 
            ,A.TSK_ST_UID = CTE.TSK_ST_UID 
            ,A.TSK_ST2_UID = CTE.TSK_ST2_UID 
            ,A.TSK_KOM_VTR_UID = CTE.TSK_KOM_VTR_UID 
            ,A.TSK_KOM_InterneVerrechnung = CTE.TSK_KOM_InterneVerrechnung 
            ,A.TSK_KOM_InterneVerrechnungMaterial = CTE.TSK_KOM_InterneVerrechnungMaterial 
            ,A.TSK_KOM_ADR_UID = CTE.TSK_KOM_ADR_UID 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
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
    VALUES 
    ( 
         CTE.TSK_UID 
        ,CTE.TSK_MDT_ID 
        ,CTE.TSK_OBJT_UID 
        ,CTE.TSK_Nr 
        ,CTE.TSK_Beschreibung 
        ,CTE.TSK_TerminVon 
        ,CTE.TSK_TerminBis 
        ,CTE.TSK_Kosten 
        ,CTE.TSK_Bemerkung 
        ,CTE.TSK_Status 
        ,CTE.TSK_ErfDate 
        ,CTE.TSK_MutUser 
        ,CTE.TSK_MutDate 
        ,CTE.TSK_TPRI_UID 
        ,CTE.TSK_TART_UID 
        ,CTE.TSK_TSTA_UID 
        ,CTE.TSK_ADR_UID_zustaendig 
        ,CTE.TSK_TPL_UID 
        ,CTE.TSK_TPL_PlanungVon 
        ,CTE.TSK_TPL_PlanungBis 
        ,CTE.TSK_VWS_IsVWS 
        ,CTE.TSK_VWS_FormID 
        ,CTE.TSK_SO_UID 
        ,CTE.TSK_GB_UID 
        ,CTE.TSK_TK_UID 
        ,CTE.TSK_GS_UID 
        ,CTE.TSK_RM_UID 
        ,CTE.TSK_TR_UID 
        ,CTE.TSK_AL_UID 
        ,CTE.TSK_KU_UID 
        ,CTE.TSK_MO_UID 
        ,CTE.TSK_PP_UID 
        ,CTE.TSK_AP_UID 
        ,CTE.TSK_SH_UID 
        ,CTE.TSK_ADR_UID 
        ,CTE.TSK_VTR_UID 
        ,CTE.TSK_KT_UID 
        ,CTE.TSK_BE_ID_erfasser 
        ,CTE.TSK_BE_ID_verantwortlich 
        ,CTE.TSK_ErledigtAm 
        ,CTE.TSK_DO_UID 
        ,CTE.TSK_IN_UID 
        ,CTE.TSK_KM_UID 
        ,CTE.TSK_TCL_UID 
        ,CTE.TSK_AO_UID 
        ,CTE.TSK_TSK_UID 
        ,CTE.TSK_ZYL_UID 
        ,CTE.TSK_SLG_UID 
        ,CTE.TSK_BP_UID 
        ,CTE.TSK_ABT_UID 
        ,CTE.TSK_IsStoerung 
        ,CTE.TSK_SM_Erfasser_Name 
        ,CTE.TSK_SM_Erfasser_Vorname 
        ,CTE.TSK_SM_Erfasser_Tel 
        ,CTE.TSK_SM_Erfasser_Email 
        ,CTE.TSK_ZN_UID 
        ,CTE.TSK_Sort 
        ,CTE.TSK_FZ_UID 
        ,CTE.TSK_BG_ID_verantwortlich 
        ,CTE.TSK_BU_UID 
        ,CTE.TSK_IKS_Nr 
        ,CTE.TSK_ST_UID 
        ,CTE.TSK_ST2_UID 
        ,CTE.TSK_KOM_VTR_UID 
        ,CTE.TSK_KOM_InterneVerrechnung 
        ,CTE.TSK_KOM_InterneVerrechnungMaterial 
        ,CTE.TSK_KOM_ADR_UID 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;


SELECT 
	 REG_UID 
	,REG_REG_UID 
	,REG_MOD_UID 
	,REG_Code 

	,REG_LANG_DE 
	,REG_LANG_EN 
	,REG_LANG_FR 
	,REG_LANG_IT 

	,REG_Control 
	,REG_Show 
	,REG_Status 
	,REG_Sort 
	,REG_usesMetadata 
FROM T_SYS_Ref_Register 
WHERE REG_LANG_DE = 'Artikel' 


SELECT 
	 REG_UID 
	,REG_REG_UID 
	,REG_MOD_UID 
	,REG_Code 

	,REG_LANG_DE 
	,REG_LANG_EN 
	,REG_LANG_FR 
	,REG_LANG_IT 

	,REG_Control 
	,REG_Show 
	,REG_Status 
	,REG_Sort 
	,REG_usesMetadata 
FROM T_SYS_Ref_Register 
WHERE REG_REG_UID = '675E952B-191A-41A9-894C-5042B1685F68' 


/*

temp1.mandant
temp1.Language  "de"
temp1.Stichtag "/Date(1638313200000+0100)/"
temp1.isReadOnly: false
temp1.formtype 'black'

temp1.TaskUser.id 12435
temp1.TaskUser.proc: "200CEB26807D6BF99FD6F4F0D1CA54D4"
temp1.TaskUser.sprache: "DE"
temp1.TaskUser.name 'Administrator DE'
temp1.TaskUser.Label 'D. Administrator'



temp1.ods_TSK.objekt 'TASK' 
temp1.mainDS_TSK.main[0].TSK_UID "593cc1c3-6ddc-488d-996c-532bd0e8cb44"
temp1.mainDS_TSK.main[0].TSK_MDT_ID
temp1.mainDS_TSK.main[0].TSK_OBJT_UID "abdfdaff-a3ac-4281-9bed-3cb478de325a"
temp1.mainDS_TSK.main[0].TSK_Nr  '3228'
temp1.mainDS_TSK.main[0].TSK_Beschreibung
temp1.mainDS_TSK.main[0].TSK_TerminVon  "/Date(1540734300000+0100)/"
temp1.mainDS_TSK.main[0].TSK_TerminBis "/Date(1540763280000+0100)/"
temp1.mainDS_TSK.main[0].TSK_Kosten
temp1.mainDS_TSK.main[0].TSK_Bemerkung
temp1.mainDS_TSK.main[0].TSK_Status
temp1.mainDS_TSK.main[0].TSK_ErfDate "/Date(1554293844137+0200)/"
temp1.mainDS_TSK.main[0].TSK_MutUser
temp1.mainDS_TSK.main[0].TSK_TPRI_UID "7db95094-b4ee-4ae2-9669-706039d77f6d"
temp1.mainDS_TSK.main[0].TSK_TART_UID "5c5c56ee-d1f5-4bf4-9d06-191a80778d8d"
temp1.mainDS_TSK.main[0].TSK_TSTA_UID "3abe61f0-f848-44e4-8783-6376208c1294"
temp1.mainDS_TSK.main[0].TSK_VWS_IsVWS
temp1.mainDS_TSK.main[0].TSK_VWS_FormID
temp1.mainDS_TSK.main[0].TSK_RM_UID "2f2fcd25-b5f5-4821-bc47-c1fc9467ae44"
temp1.mainDS_TSK.main[0].TSK_BE_ID_erfasser 12435
temp1.mainDS_TSK.main[0].TSK_BE_ID_verantwortlich 12435
temp1.mainDS_TSK.main[0].TSK_IsStoerung false
temp1.mainDS_TSK.main[0].TSK_SM_Erfasser_Name
temp1.mainDS_TSK.main[0].TSK_SM_Erfasser_Vorname
temp1.mainDS_TSK.main[0].TSK_SM_Erfasser_Tel
temp1.mainDS_TSK.main[0].TSK_SM_Erfasser_Email
temp1.mainDS_TSK.main[0].TSK_Sort
temp1.mainDS_TSK.main[0].TSK_IKS_Nr
temp1.mainDS_TSK.main[0]._TSK_OBJT_Code "RM"
temp1.mainDS_TSK.main[0]._TSK_Nr "003228"
temp1.mainDS_TSK.main[0]._TSK_OBJ_UID   "2f2fcd25-b5f5-4821-bc47-c1fc9467ae44"

temp1.ods.objekt 'STANDORT'
temp1.mainDS.main[0]
temp1.mainDS.main[0].SO_UID
temp1.mainDS.main[0].SO_MDT_ID
temp1.mainDS.main[0].SO_ORT_UID
temp1.mainDS.main[0].SO_ApertureKey
temp1.mainDS.main[0].SO_Nr
temp1.mainDS.main[0].SO_Bezeichnung
temp1.mainDS.main[0].SO_Bemerkung
temp1.mainDS.main[0].SO_DatumVon
temp1.mainDS.main[0].SO_DatumBis
temp1.mainDS.main[0].SO_Status
temp1.mainDS.main[0].SO_MutUser
temp1.mainDS.main[0].SO_IsSchnittstelleWP
temp1.mainDS.main[0].SO_GM_Lat
temp1.mainDS.main[0].SO_GM_Lng
temp1.mainDS.main[0].SO_UmrechnungsFaktor
temp1.mainDS.main[0].SO_MDT_UID
temp1.mainDS.main[0].SO_Objektleiter
temp1.mainDS.main[0].SO_Manager
temp1.mainDS.main[0].SO_CM_Stundensatz
temp1.mainDS.main[0].SO_CM_Anpassungsfaktor
temp1.mainDS.main[0]._SO_Label
temp1.mainDS.main[0]._SO_Sort


temp1.ods.objekt 'GEBAEUDE'
temp1.mainDS.main[0]
temp1.mainDS.main[0].GB_UID
temp1.mainDS.main[0].GB_MDT_ID
temp1.mainDS.main[0].GB_SO_UID
temp1.mainDS.main[0].GB_GK_UID
temp1.mainDS.main[0].GB_ApertureKey
temp1.mainDS.main[0].GB_Nr
temp1.mainDS.main[0].GB_Strasse
temp1.mainDS.main[0].GB_StrasseNr
temp1.mainDS.main[0].GB_PLZ
temp1.mainDS.main[0].GB_Ort
temp1.mainDS.main[0].GB_Bezeichnung
temp1.mainDS.main[0].GB_Bemerkung
temp1.mainDS.main[0].GB_DETAIL_AssekuranzNr
temp1.mainDS.main[0].GB_DETAIL_AssekuranzPoliceNr
temp1.mainDS.main[0].GB_DETAIL_Assekuranzwert
temp1.mainDS.main[0].GB_DETAIL_Bauzone
temp1.mainDS.main[0].GB_DETAIL_EntsorgungsamtKundenNr
temp1.mainDS.main[0].GB_DETAIL_GewSchutzzone
temp1.mainDS.main[0].GB_DETAIL_IsSchutzraumpflicht
temp1.mainDS.main[0].GB_DETAIL_GrundstückNr
temp1.mainDS.main[0].GB_DETAIL_SpezReVerhaeltnisse
temp1.mainDS.main[0].GB_DETAIL_Umnutzung
temp1.mainDS.main[0].GB_DatumVon
temp1.mainDS.main[0].GB_DatumBis
temp1.mainDS.main[0].GB_Status
temp1.mainDS.main[0].GB_MutUser
temp1.mainDS.main[0].GB_Kundennummer
temp1.mainDS.main[0].GB_Eigentuemer
temp1.mainDS.main[0].GB_Versicherungsnummer
temp1.mainDS.main[0].GB_Gemeinde
temp1.mainDS.main[0].GB_Standort
temp1.mainDS.main[0].GB_Gebaeudeklasse
temp1.mainDS.main[0].GB_Gefahrenklasse
temp1.mainDS.main[0].GB_letzte_Schaetzung
temp1.mainDS.main[0].GB_Koordinaten
temp1.mainDS.main[0].GB_DETAIL_KubischeFlaeche
temp1.mainDS.main[0].GB_Code
temp1.mainDS.main[0].GB_Adresszusatz
temp1.mainDS.main[0].GB_EGID
temp1.mainDS.main[0].GB_Sammelplatz
temp1.mainDS.main[0].GB_Kurzzeichen
temp1.mainDS.main[0]._GB_Label
temp1.mainDS.main[0]._GB_Sort



temp1.ods.objekt 'GESCHOSS'
temp1.ods.tablename "T_AP_Geschoss"
temp1.mainDS.main[0]
temp1.mainDS.main[0].GS_UID
temp1.mainDS.main[0].GS_MDT_ID
temp1.mainDS.main[0].GS_GB_UID
temp1.mainDS.main[0].GS_GST_UID
temp1.mainDS.main[0].GS_ApertureKey
temp1.mainDS.main[0].GS_Nr
temp1.mainDS.main[0].GS_Bezeichnung
temp1.mainDS.main[0].GS_Hoehe
temp1.mainDS.main[0].GS_Sort
temp1.mainDS.main[0].GS_IsAussengeschoss
temp1.mainDS.main[0].GS_Bemerkung
temp1.mainDS.main[0].GS_DatumVon
temp1.mainDS.main[0].GS_DatumBis
temp1.mainDS.main[0].GS_Status
temp1.mainDS.main[0].GS_MutUser
temp1.mainDS.main[0].GS_Sammelplatz
temp1.mainDS.main[0].GS_CAD_Name
temp1.mainDS.main[0].GS_Planseite
temp1.mainDS.main[0]._GS_Sort


temp1.ods.objekt 'RAUM'
temp1.ods.tablename 'T_AP_Raum'
temp1.mainDS.main[0]
temp1.mainDS.main[0].RM_UID
temp1.mainDS.main[0].RM_MDT_ID
temp1.mainDS.main[0].RM_GS_UID
temp1.mainDS.main[0].RM_BB_UID
temp1.mainDS.main[0].RM_NA_UID_gebaut
temp1.mainDS.main[0].RM_RP_UID
temp1.mainDS.main[0].RM_ApertureKey
temp1.mainDS.main[0].RM_Nr
temp1.mainDS.main[0].RM_Bezeichnung
temp1.mainDS.main[0].RM_Bemerkung
temp1.mainDS.main[0].RM_Hoehe
temp1.mainDS.main[0].RM_Bodenbelastung
temp1.mainDS.main[0].RM_IsEBF
temp1.mainDS.main[0].RM_IsBeheizt
temp1.mainDS.main[0].RM_IsGekuehlt
temp1.mainDS.main[0].RM_IsBefeuchtet
temp1.mainDS.main[0].RM_IsFluchtweg
temp1.mainDS.main[0].RM_DatumVon
temp1.mainDS.main[0].RM_DatumBis
temp1.mainDS.main[0].RM_Status
temp1.mainDS.main[0].RM_MutUser
temp1.mainDS.main[0].RM_HoeheInfo
temp1.mainDS.main[0].RM_IsVermietbar
temp1.mainDS.main[0].RM_Price
temp1.mainDS.main[0].RM_Leistungsverzeichnis
temp1.mainDS.main[0].RM_Leistungsverzeichnis_Kalk
temp1.mainDS.main[0].RM_RDK_UID
temp1.mainDS.main[0].RM_RWO_UID
temp1.mainDS.main[0].RM_IsHohlboden
temp1.mainDS.main[0].RM_BodenbelagDetail
temp1.mainDS.main[0].RM_MaxAnzAP
temp1.mainDS.main[0].RM_ZF_Rank
temp1.mainDS.main[0].RM_IdentifikationAO
temp1.mainDS.main[0].RM_Raumattribut
temp1.mainDS.main[0].RM_Funktion
temp1.mainDS.main[0].RM_FGN_FSN
temp1.mainDS.main[0]._RM_Label
temp1.mainDS.main[0].RM_CM_SLA_NA_UID
temp1.mainDS.main[0].RM_CM_SLA_BB_UID
temp1.mainDS.main[0].RM_CM_SLA_RP_UID
temp1.mainDS.main[0].RM_CM_Kalk_Stundensatz
temp1.mainDS.main[0].RM_CM_Kalk_Anpassungsfaktor
temp1.mainDS.main[0].RM_CM_SLA_Stundensatz
temp1.mainDS.main[0].RM_CM_SLA_Anpassungsfaktor
temp1.mainDS.main[0].RM_CM_Kalk_NA_UID
temp1.mainDS.main[0].RM_CM_Kalk_BB_UID
temp1.mainDS.main[0].RM_CM_Kalk_RP_UID
temp1.mainDS.main[0].RM_CM_SLA_Betriebswochen
temp1.mainDS.main[0].RM_Grundreinigung
temp1.mainDS.main[0].RM_Zwischenverglasung
temp1.mainDS.main[0]._RM_Sort

temp1.ods.objekt 'ANLAGE' / "Bauteil",
temp1.ods.tablename 'T_AP_Anlage' 
temp1.mainDS.main[0]
temp1.mainDS.main[0].AL_UID
temp1.mainDS.main[0].AL_MDT_ID
temp1.mainDS.main[0].AL_RM_UID
temp1.mainDS.main[0].AL_AK_UID
temp1.mainDS.main[0].AL_ApertureKey
temp1.mainDS.main[0].AL_Nr
temp1.mainDS.main[0].AL_Hersteller
temp1.mainDS.main[0].AL_Modell
temp1.mainDS.main[0].AL_Typ
temp1.mainDS.main[0].AL_TypenNr
temp1.mainDS.main[0].AL_Baujahr
temp1.mainDS.main[0].AL_SerienNr
temp1.mainDS.main[0].AL_Beschreibung
temp1.mainDS.main[0].AL_Bemerkung
temp1.mainDS.main[0].AL_DatumVon
temp1.mainDS.main[0].AL_DatumBis
temp1.mainDS.main[0].AL_Status
temp1.mainDS.main[0].AL_MutUser
temp1.mainDS.main[0].AL_DETAIL_Nutzebene
temp1.mainDS.main[0].AL_MASTER_TYP
temp1.mainDS.main[0].AL_DETAIL_LBH
temp1.mainDS.main[0].AL_Lebensdauer
temp1.mainDS.main[0].AL_Anschaffungspreis
temp1.mainDS.main[0].AL_IsPraeventiv
temp1.mainDS.main[0].AL_IsInstandhaltung
temp1.mainDS.main[0].AL_IsFehlerbehebung
temp1.mainDS.main[0].AL_IsGesVorschriften
temp1.mainDS.main[0].AL_IsRelevantNebenkosten
temp1.mainDS.main[0].AL_NR_Intern
temp1.mainDS.main[0].AL_Name
temp1.mainDS.main[0].AL_Fachplaner
temp1.mainDS.main[0].AL_Gruppe
temp1.mainDS.main[0].AL_MSRL_Nummer
temp1.mainDS.main[0]._AL_Label

temp1.ods.objekt 'TRAKT'
temp1.ods.tablename 'T_AP_Trakt'
temp1.mainDS.main[0]
temp1.mainDS.main[0].TK_UID
temp1.mainDS.main[0].TK_MDT_ID
temp1.mainDS.main[0].TK_GB_UID
temp1.mainDS.main[0].TK_ApertureKey
temp1.mainDS.main[0].TK_Nr
temp1.mainDS.main[0].TK_Bezeichnung
temp1.mainDS.main[0].TK_Bemerkung
temp1.mainDS.main[0].TK_DatumVon
temp1.mainDS.main[0].TK_DatumBis
temp1.mainDS.main[0].TK_Status
temp1.mainDS.main[0].TK_StylizerFore
temp1.mainDS.main[0].TK_StylizerBack
temp1.mainDS.main[0].TK_StylizerPattern
temp1.mainDS.main[0].TK_StylizerLine
temp1.mainDS.main[0].TK_Code
temp1.mainDS.main[0].TK_Strasse
temp1.mainDS.main[0].TK_StrasseNr
temp1.mainDS.main[0].TK_PLZ
temp1.mainDS.main[0].TK_Ort
temp1.mainDS.main[0].TK_Bauzone
temp1.mainDS.main[0].TK_Flaeche
temp1.mainDS.main[0].TK_KubischeFlaeche
temp1.mainDS.main[0].TK_AssekuranzNr
temp1.mainDS.main[0].TK_AssekuranzPoliceNr
temp1.mainDS.main[0].TK_Erwerbsjahr
temp1.mainDS.main[0].TK_Schutzzone
temp1.mainDS.main[0].TK_IsSchutzraumpflicht
temp1.mainDS.main[0].TK_Realwert
temp1.mainDS.main[0].TK_SpezReVerhaeltnisse
temp1.mainDS.main[0].TK_Umnutzung
temp1.mainDS.main[0].TK_EGID
temp1.mainDS.main[0].TK_GrundstueckNr
temp1.mainDS.main[0].TK_Verkehrswert
temp1.mainDS.main[0].TK_Buchwert
temp1.mainDS.main[0].TK_Ertragswert
temp1.mainDS.main[0].TK_Landwert
temp1.mainDS.main[0].TK_Assekuranzwert
temp1.mainDS.main[0].TK_Lage_Faktor
temp1.mainDS.main[0].TK_Nebenkosten
temp1.mainDS.main[0].TK_Neuwert
temp1.mainDS.main[0].TK_Zeitwert
temp1.mainDS.main[0].TK_Raum_SIA_116
temp1.mainDS.main[0].TK_Kundennummer
temp1.mainDS.main[0].TK_Versicherungsnummer
temp1.mainDS.main[0].TK_Gemeinde
temp1.mainDS.main[0].TK_Standort
temp1.mainDS.main[0].TK_Gebaeudeklasse
temp1.mainDS.main[0].TK_Gefahrenklasse
temp1.mainDS.main[0].TK_Eigentuemer
temp1.mainDS.main[0].TK_letzte_Schaetzung
temp1.mainDS.main[0]._TK_Label
temp1.mainDS.main[0]._TK_Sort



-- SELECT * FROM T_AP_Kontakte 
-- SELECT * FROM T_Benutzer 
-- SELECT * FROM T_AP_Gebaeude WHERE GB_Ort LIKE 'Frankfurt%'


SELECT * FROM T_VWS_Ref_Translation 
WHERE TRA_Lang_IT = 'Fedele alla scala:'



-- SELECT * FROM T_VWS_Ref_Translation WHERE TRA_Lang_EN = 'Display'
-- SELECT * FROM T_VWS_Ref_Translation WHERE TRA_Lang_DE = 'Anzeige'


SELECT * FROM T_BO_Menu WHERE ME_Text_de LIKE '%checkli%'
	
SELECT * FROM T_ZO_Slickcolumn WHERE ZO_SLCOL_LANG_DE LIKE '%check%'

SELECT * FROM T_COR_Ref_Slickcolumn WHERE SLCOL_LANG_DE LIKE '%check%'

SELECT * FROM T_SYS_Language_Forms WHERE LANG_DE LIKE '%check%'


SELECT * FROM T_SYS_Ref_BackOfficeSubMenue WHERE BOSM_Lang_DE LIKE '%check%'
SELECT * FROM T_SYS_Ref_Register WHERE REG_LANG_DE LIKE '%check%'


SELECT * FROM T_FMS_Translation WHERE FT_Ch LIKE '%check%'
SELECT * FROM T_SYS_Berechtigung_Felder WHERE BF_Feldbezeichnung LIKE '%check%'
SELECT * FROM T_Benutzerrechte WHERE COLUMN_NAME LIKE '%check%'




*/
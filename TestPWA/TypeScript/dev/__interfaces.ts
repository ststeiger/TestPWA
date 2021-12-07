
interface IAvailableLanguages
{
    de: string;
    fr?: string;
    it?: string;
    en?: string;
}


// interface ITranslationData { [key: string]: IAvailableLanguages }
// interface ITranslationData { [key: string]: { [lang: string]: string }  }

//type Languages = Record<"de" | "fr" | "it" | "en", string>

//interface IReadings
//{
//    [key: string]: Languages
//}


type PartialRecord<K extends keyof any, T> = { [P in K]?: T; };
// type List = PartialRecord<'a' | 'b' | 'c', string>
type AvailableLanguages = "de" | "fr" | "it" | "en";
type TranslationEntries<T extends string> = Record<T, Record<AvailableLanguages, string>>;

// type AvailableLanguages = "de" | "DE" | "fr" | "FR" | "it" | "IT" | "en" | "EN";
// type TranslationEntries<T extends string> = Record<T, PartialRecord<AvailableLanguages, string>>;


interface IPortalSessionData
{
    userLanguage: AvailableLanguages;
    proc: string;
    userName: string;
}


interface IT_AP_Standort
{
    SO_UID: string;
    SO_Nr: string;
    SO_Bezeichnung: string;
    SO_DatumVon: Date;
    SO_DatumBis: Date;
    SO_Status: number;
    SO_GM_Lat?: number;
    SO_GM_Lng?: number;
    _SO_Label: string;
    _SO_Sort: number;
}



interface IT_AP_Gebaeude
{
    GB_UID: string;
    GB_Nr: string;
    GB_Bezeichnung: string;

    GB_Strasse: string;
    GB_StrasseNr: string;
    GB_PLZ: string;
    GB_Ort: string;
    GB_DatumVon: Date;
    GB_DatumBis: Date;
    GB_Status: number;

    GB_GM_Lat?: number;
    GB_GM_Lng?: number;
    _GB_Label: string;
    _GB_Sort: number;
}


interface IT_AP_Geschoss
{
    GS_UID: string;
    GS_Nr: string;
    GS_Bezeichnung: string;
    GS_DatumVon: Date;
    GS_DatumBis: Date;
    GS_Status: number;
    GS_IsAussengeschoss: boolean;
    GS_CAD_Name: string;
    _GS_Sort: number;
}


interface IT_AP_Trakt
{
    TK_UID: string;
    TK_GB_UID?: string;
    TK_Nr: string;
    TK_Bezeichnung: string;
    TK_DatumVon: Date;
    TK_DatumBis: Date;
    TK_Status: number;
    _TK_Label: string;
    _TK_Sort: number;
}


interface IT_AP_Raum
{
    RM_UID: string;
    RM_GS_UID: string;
    RM_Nr: string;
    RM_Bezeichnung: string;
    RM_DatumVon: Date;
    RM_DatumBis: Date;
    RM_Status: number;
    _RM_Label: string;
    _RM_Sort: number;
}

interface IT_AP_Anlage
{
    AL_UID: string;
    AL_Nr?: string;
    AL_Name?: string;
    AL_NR_Intern?: string;
    AL_DatumVon: Date;
    AL_DatumBis: Date;
    AL_Status: number;


    AL_GM_Lat?: number;
    AL_GM_Lng?: number;
    _AL_Label: string;
}


interface IT_TM_Tasks
{
    TSK_UID: string;
    TSK_OBJT_UID: string;
    TSK_Nr: string;
    TSK_Beschreibung?: string;
    TSK_IKS_Nr?: string;
    TSK_TerminVon?: Date;
    TSK_TerminBis?: Date;
    TSK_ErledigtAm?: Date;

    TSK_Kosten?: number;
    TSK_Status?: number;
    TSK_Sort: number;

    TSK_TPRI_UID?: string;
    TSK_TART_UID?: string;
    TSK_TSTA_UID?: string;

    TSK_BE_ID_erfasser?: number;
    TSK_BE_ID_verantwortlich?: number;
    TSK_BG_ID_verantwortlich?: number;
    TSK_ADR_UID_zustaendig?: string;

    TSK_TPL_UID?: string;
    TSK_TPL_PlanungVon?: Date;
    TSK_TPL_PlanungBis?: Date;

    _TSK_OBJ_UID: string;
    _TSK_OBJT_Code: string;
    _TSK_Nr: string;

    TSK_SO_UID?: string;
    TSK_GB_UID?: string;
    TSK_TK_UID?: string;
    TSK_GS_UID?: string;
    TSK_RM_UID?: string;
    TSK_TR_UID?: string;
    TSK_AL_UID?: string;
    TSK_KU_UID?: string;
    TSK_MO_UID?: string;
    TSK_PP_UID?: string;
    TSK_AP_UID?: string;
    TSK_SH_UID?: string;
    TSK_ADR_UID?: string;
    TSK_VTR_UID?: string;
    TSK_KT_UID?: string;
    TSK_DO_UID?: string;
    TSK_IN_UID?: string;
    TSK_KM_UID?: string;
    TSK_TCL_UID?: string;
    TSK_AO_UID?: string;
    TSK_TSK_UID?: string;
    TSK_ZYL_UID?: string;
    TSK_SLG_UID?: string;
    TSK_BP_UID?: string;
    TSK_ABT_UID?: string;
    TSK_ZN_UID?: string;
    TSK_FZ_UID?: string;
    TSK_BU_UID?: string;
    TSK_ST_UID?: string;
    TSK_ST2_UID?: string;
}


type BasicMainTables = IT_AP_Standort | IT_AP_Gebaeude | IT_AP_Geschoss | IT_AP_Trakt | IT_AP_Raum | IT_AP_Anlage | IT_TM_Tasks;


interface IMainDS
{
    main: BasicMainTables[];
}

interface IODS
{
    objekt: string;
    tablename: string;
}

interface IBasicSession
{
    mandant: number;
    Language: string;
    Stichtag: Date;
    isReadOnly: boolean;
    formtype: string;

    ods: IODS;
    mainDS: IMainDS;
    mainDS_TSK: IMainDS;
}

interface IBasicObject
{
    OBJ_UID: string;
    OBJT_Code: string;
}


namespace AnySqlWebAdmin
{


    public class DummySession
    {
        public int mandant;
        public string Language;
        public System.DateTime Stichtag;
        public bool isReadOnly;
        public string formtype;

        public cODS ods;
        public cMainDS mainDS;

        public DummySession()
        {
            this.mandant = 0;
            this.Language = "de";
            this.Stichtag = System.DateTime.UtcNow;
            this.isReadOnly = false;
            this.formtype = "black";

            this.mainDS = new cMainDS();
            this.ods = this.mainDS.m_ods; ;
        }
    }


    public class cTaskUser
    {
        public int id;
        public string proc;
        public string sprache;
        public string name;
        public string Label;

        public cTaskUser()
        {
            this.id = 1;
            this.proc = "";
            this.sprache = "DE";
            this.name = "Ahörnchen";
            this.Label = "B. Ahörnchen";
        }
    }


    public class cODS
    {
        public string objekt;
        public string tablename;

        public cODS()
        {
            // this.objekt = "STANDORT"; this.tablename = "T_AP_Standort";
            // this.objekt = "GEBAEUDE"; this.tablename = "T_AP_Gebaeude";
            // this.objekt = "GESCHOSS"; this.tablename = "T_AP_Geschoss";
            // this.objekt = "TRAKT"; this.tablename = "T_AP_Trakt";
            // this.objekt = "RAUM"; this.tablename = "T_AP_Raum";
            // this.objekt = "ANLAGE"; this.tablename = "T_AP_Anlage";
            // this.objekt = "Bauteil"; this.tablename = "T_AP_Anlage";
            this.objekt = "TASK"; this.tablename = "T_TM_Tasks";
        }

    }

    public class cMainDS
    {
        public System.Collections.Generic.List<object> main;

        internal cODS m_ods;

        public cMainDS(cODS ods)
        {
            this.m_ods = ods;
            this.main = new System.Collections.Generic.List<object>();

            if (ods.tablename == "T_TM_Tasks")
                this.main.Add(new T_TM_Tasks());
            else if (ods.tablename == "T_AP_Standort")
                this.main.Add(new T_AP_Standort());
            else if (ods.tablename == "T_AP_Gebaeude")
                this.main.Add(new T_AP_Gebaeude());
            else if (ods.tablename == "T_AP_Geschoss")
                this.main.Add(new T_AP_Geschoss());
            else if (ods.tablename == "T_AP_Trakt")
                this.main.Add(new T_AP_Trakt());
            else if (ods.tablename == "T_AP_Raum")
                this.main.Add(new T_AP_Raum());
            else if (ods.tablename == "T_AP_Anlage")
                this.main.Add(new T_AP_Anlage());
        }
        public cMainDS()
            : this(new cODS())
        { }

    }





    public class T_AP_Standort
    {
        public System.Guid SO_UID;
        public int SO_MDT_ID;
        public System.Guid? SO_ORT_UID;
        public string SO_ApertureKey; // 50
        public string SO_Nr; // 4
        public string SO_Bezeichnung; // 200
        public string SO_Bemerkung; // -1
        public System.DateTime SO_DatumVon;
        public System.DateTime SO_DatumBis;
        public int SO_Status;
        public bool SO_IsSchnittstelleWP;
        public System.Guid? SO_SO_UID;
        public decimal? SO_GM_Lat;
        public decimal? SO_GM_Lng;
        public System.Guid? SO_MDT_UID;
        public string _SO_Label; // 205
        public float? _SO_Sort;
        public System.Guid? SO_VWSLOGO_UID;


        public T_AP_Standort()
        {
            this.SO_UID = System.Guid.NewGuid();
            this.SO_Nr = "23";
            this._SO_Label = "Standort 23";
        }
    }


    public class T_AP_Gebaeude
    {
        public System.Guid GB_UID;
        public int GB_MDT_ID;
        public System.Guid GB_SO_UID;
        public System.Guid? GB_EV_UID;
        public System.Guid? GB_GK_UID;
        public string GB_ApertureKey; // 50
        public string GB_Nr; // 4
        public string GB_Strasse; // 50
        public string GB_StrasseNr; // 10
        public string GB_PLZ; // 10
        public string GB_Ort; // 50
        public string GB_Bezeichnung; // 100
        public string GB_Bemerkung; // -1
        public System.DateTime GB_DatumVon;
        public System.DateTime GB_DatumBis;
        public int GB_Status;
        public System.Guid? GB_ADR_UID;
        public System.Guid? GB_SK_UID;
        public string GB_Koordinaten; // 50
        public string GB_Code; // 50
        public string GB_Sammelplatz; // 100
        public System.Guid? GB_KL_UID;
        public decimal? GB_GM_Lat;
        public decimal? GB_GM_Lng;
        public decimal? GB_GM_SVLat;
        public decimal? GB_GM_SVLng;
        public string GB_Kurzzeichen; // 200
        public string _GB_Label; // 105
        public float? _GB_Sort;


        public T_AP_Gebaeude()
        {
            this.GB_UID = System.Guid.NewGuid();
            this.GB_Nr = "23";
            this._GB_Label = "Gebäude 23";
        }

    }

    public class T_AP_Geschoss
    {
        public System.Guid GS_UID;
        public int GS_MDT_ID;
        public System.Guid GS_GB_UID;
        public System.Guid GS_GST_UID;
        public string GS_ApertureKey; // 50
        public string GS_Nr; // 2
        public string GS_Bezeichnung; // 100
        public float GS_Hoehe;
        public int GS_Sort;
        public bool GS_IsAussengeschoss;
        public string GS_Bemerkung; // -1
        public System.DateTime GS_DatumVon;
        public System.DateTime GS_DatumBis;
        public int GS_Status;
        public string GS_Sammelplatz; // 100
        public string _Geschoss; // 50
        public string GS_CAD_Name; // 25
        public string GS_Planseite; // 50
        public int? _GS_Sort;

        public T_AP_Geschoss()
        {
            this.GS_UID = System.Guid.NewGuid();
            this.GS_Nr = "23";
            this._GS_Sort = 2;
        }
    }

    public class T_AP_Trakt
    {
        public System.Guid TK_UID;
        public int TK_MDT_ID;
        public System.Guid? TK_GB_UID;
        public string TK_ApertureKey; // 50
        public string TK_Nr; // 25
        public string TK_Bezeichnung; // 100
        public string TK_Bemerkung; // -1
        public System.DateTime TK_DatumVon;
        public System.DateTime TK_DatumBis;
        public int TK_Status;
        public string TK_Code; // 50
        public System.Guid? TK_GK_UID;
        public string _TK_Label; // 126
        public float? _TK_Sort;

        public T_AP_Trakt()
        {
            this.TK_UID = System.Guid.NewGuid();
            this.TK_Nr = "23";
        }
    }

    public class T_AP_Raum
    {
        public System.Guid RM_UID;
        public int RM_MDT_ID;
        public System.Guid RM_GS_UID;
        public string RM_ApertureKey; // 50
        public string RM_Nr; // 25
        public string RM_Bezeichnung; // 100
        public string RM_Bemerkung;
        public System.DateTime RM_DatumVon;
        public System.DateTime RM_DatumBis;
        public int? RM_Status;
        public System.Guid? RM_TK_UID;
        public bool RM_IsVermietbar;
        public int? _NichtVermietbar;
        public int? _Leerstand;
        public System.Guid? RM_Parent_UID;
        public System.Guid? RM_RM_UID;
        public System.Guid? RM_NA_UID;
        public string _RM_Label; // 126
        public float? _RM_Sort;

        public T_AP_Raum()
        {
            this.RM_UID = System.Guid.NewGuid();
            this.RM_Nr = "23";
            this._RM_Label = "RM23";
            this._RM_Sort = 123;
        }
    }

    public class T_AP_Anlage
    {
        public System.Guid AL_UID;
        public int AL_MDT_ID;
        public System.Guid? AL_VAR_UID;
        public System.Guid AL_AK_UID;
        public string AL_ApertureKey; // 50
        public string AL_Nr; // 255
        public string AL_Hersteller; // 50
        public string AL_Modell; // 50
        public string AL_Typ; // 50
        public string AL_TypenNr; // 50
        public int AL_Baujahr;
        public string AL_SerienNr; // 50
        public string AL_Beschreibung; // -1
        public string AL_Bemerkung; // -1
        public System.DateTime AL_DatumVon;
        public System.DateTime AL_DatumBis;
        public int AL_Status;

        public System.Guid? AL_AL_UID;
        public System.Guid? AL_MASTER_UID;
        public System.Guid? AL_SO_UID;
        public System.Guid? AL_GB_UID;
        public System.Guid? AL_GS_UID;
        public System.Guid? AL_RM_UID;
        public System.Guid? AL_ADR_UID;


        public System.DateTime? AL_Abnahmedatum;
        public System.DateTime? AL_GarantieBis;
        public int AL_Lebensdauer;
        public int AL_Anschaffungspreis;

        public int? AL_BE_ID;
        public string AL_NR_Intern; // 100
        public string AL_Name; // 100
        public string AL_Fachplaner; // 100
        public string AL_Gruppe; // 100
        public string AL_MSRL_Nummer; // 50
        public System.DateTime? AL_Inbetriebnahme;
        public decimal? AL_GM_Lat;
        public decimal? AL_GM_Lng;
        public decimal? AL_GM_SVLat;
        public decimal? AL_GM_SVLng;
        public string _AL_Label; // 255


        public T_AP_Anlage()
        {
            this.AL_UID = System.Guid.NewGuid();
            this.AL_Nr = "23";
        }

    }

    public class T_TM_Tasks
    {
        public System.Guid TSK_UID;
        public int? TSK_MDT_ID;
        public System.Guid? TSK_OBJT_UID;
        public string TSK_Nr; // 25
        public string TSK_Beschreibung; // 255
        public System.DateTime? TSK_TerminVon;
        public System.DateTime? TSK_TerminBis;
        public float TSK_Kosten;
        public string TSK_Bemerkung; // -1
        public int TSK_Status;
        public System.DateTime TSK_ErfDate;
        public System.Guid? TSK_TPRI_UID;
        public System.Guid TSK_TART_UID;
        public System.Guid? TSK_TSTA_UID;
        public System.Guid? TSK_ADR_UID_zustaendig;
        public System.Guid? TSK_TPL_UID;
        public System.DateTime? TSK_TPL_PlanungVon;
        public System.DateTime? TSK_TPL_PlanungBis;
        public bool TSK_VWS_IsVWS;
        public string TSK_VWS_FormID; // 36
        public System.Guid? TSK_SO_UID;
        public System.Guid? TSK_GB_UID;
        public System.Guid? TSK_TK_UID;
        public System.Guid? TSK_GS_UID;
        public System.Guid? TSK_RM_UID;
        public System.Guid? TSK_TR_UID;
        public System.Guid? TSK_AL_UID;
        public System.Guid? TSK_KU_UID;
        public System.Guid? TSK_MO_UID;
        public System.Guid? TSK_PP_UID;
        public System.Guid? TSK_AP_UID;
        public System.Guid? TSK_SH_UID;
        public System.Guid? TSK_ADR_UID;
        public System.Guid? TSK_VTR_UID;
        public System.Guid? TSK_KT_UID;
        public int? TSK_BE_ID_erfasser;
        public int? TSK_BE_ID_verantwortlich;
        public System.DateTime? TSK_ErledigtAm;
        public System.Guid? TSK_DO_UID;
        public System.Guid? TSK_IN_UID;
        public System.Guid? TSK_KM_UID;
        public System.Guid? TSK_TCL_UID;
        public System.Guid? TSK_AO_UID;
        public System.Guid? TSK_TSK_UID;
        public System.Guid? TSK_ZYL_UID;
        public System.Guid? TSK_SLG_UID;
        public System.Guid? TSK_BP_UID;
        public System.Guid? TSK_ABT_UID;
        public bool TSK_IsStoerung;
        public System.Guid? TSK_ZN_UID;
        public int? TSK_Sort;
        public System.Guid? TSK_FZ_UID;
        public int? TSK_BG_ID_verantwortlich;
        public System.Guid? TSK_BU_UID;
        public string TSK_IKS_Nr; // 50
        public System.Guid? TSK_ST_UID;
        public System.Guid? TSK_ST2_UID;
        public string _TSK_OBJT_Code; // 3
        public string _TSK_Nr; // 8000
        public System.Guid? _TSK_OBJ_UID;


        public T_TM_Tasks()
        {
            this.TSK_UID = System.Guid.NewGuid();

            this.TSK_RM_UID = System.Guid.NewGuid();
            this._TSK_OBJT_Code = "RM";
            this.TSK_OBJT_UID = System.Guid.NewGuid();
            this._TSK_OBJ_UID = this.TSK_RM_UID;
        }


    }

}

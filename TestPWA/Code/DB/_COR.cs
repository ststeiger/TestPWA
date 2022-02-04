
namespace _COR
{


    public enum Mandant
    {
        Global = 0,
        Sursee = 10,
        Raiffeisen = 20,
        SwissLife = 40,
        Wincasa = 60,
        Swisscom = 61,
        SNB = 70,
        SRG = 80,
        BKB = 90,
        Phonak = 100,
        RSI = 110,
        Post = 120,
        JuliusBaer = 130,
        Helvetia = 140,
        Domicil = 150,
        KantonLuzern = 160,
        BaselStadt = 170,
        VIVIVABaar = 180,
        KantonUri = 190,
        SwissRe = 900,
        StadtZuerich = 910,
        _V4 = 2000
    }

    public partial class SQL
    {
        public static _COR.Mandant getMandant()
        {
#if false 
            return _COR.Mandant.SNB;
#endif 

            return _COR.Mandant.Global;
        }
    }

}



interface ILanguageDropdownData
{
    v: number;
    t?: string;
    s?: boolean;
}


interface IT_SYS_Language
{
    SYSLANG_LCID: number;
    SYSLANG_CultureName?: string;
    SYSLANG_Name?: string;
    SYSLANG_IetfLanguageTag?: string;
    SYSLANG_TwoLetterISOLanguageName?: string;
    SYSLANG_ThreeLetterISOLanguageName?: string;
    SYSLANG_ThreeLetterWindowsLanguageName?: string;
    SYSLANG_EnglishName?: string;
    SYSLANG_NativeName?: string;
    SYSLANG_DisplayName?: string;
    SYSLANG_NativeCalendarName?: string;
    SYSLANG_FullDateTimePattern?: string;
    SYSLANG_RFC1123Pattern?: string;
    SYSLANG_SortableDateTimePattern?: string;
    SYSLANG_UniversalSortableDateTimePattern?: string;
    SYSLANG_DateSeparator?: string;
    SYSLANG_LongDatePattern?: string;
    SYSLANG_ShortDatePattern?: string;
    SYSLANG_LongTimePattern?: string;
    SYSLANG_ShortTimePattern?: string;
    SYSLANG_YearMonthPattern?: string;
    SYSLANG_MonthDayPattern?: string;
    SYSLANG_PMDesignator?: string;
    SYSLANG_AMDesignator?: string;
    SYSLANG_Calendar?: string;
    SYSLANG_IsNeutralCulture?: boolean;
    SYSLANG_IsRightToLeft?: boolean;
    SYSLANG_ParentLCID?: number;
    SYSLANG_ANSICodePage?: number;
    SYSLANG_EBCDICCodePage?: number;
    SYSLANG_MacCodePage?: number;
    SYSLANG_OEMCodePage?: number;
    SYSLANG_ListSeparator?: string;
    SYSLANG_NumberDecimalSeparator?: string;
    SYSLANG_NumberGroupSeparator?: string;
    SYSLANG_NumberNegativePattern?: string;
    SYSLANG_CurrencyDecimalSeparator?: string;
    SYSLANG_CurrencyGroupSeparator?: string;
    SYSLANG_CurrencySymbol?: string;
    SYSLANG_CurrencyNegativePattern?: string;
    SYSLANG_CurrencyPositivePattern?: string;
    SYSLANG_PercentDecimalSeparator?: string;
    SYSLANG_PercentGroupSeparator?: string;
    SYSLANG_PercentNegativePattern?: string;
    SYSLANG_PercentPositivePattern?: string;
    SYSLANG_CorUse?: boolean; 
}




interface IT_SYS_Language_DayNames
{
    SYSDAYS_SYSLANG_LCID: number;
    SYSDAYS_DayOfWeekIndexBaseZero: number;
    SYSDAYS_DayOfWeekIndexBaseOne?: number;
    SYSDAYS_SYSLANG_IetfLanguageTag?: string;
    SYSDAYS_Name?: string;
    SYSDAYS_LowerCaseName?: string;
    SYSDAYS_UpperCaseName?: string;
    SYSDAYS_TitleCaseName?: string;
    SYSDAYS_AbbreviatedName?: string;
    SYSDAYS_LowerCaseAbbreviatedName?: string;
    SYSDAYS_UpperCaseAbbreviatedName?: string;
    SYSDAYS_TitleCaseAbbreviatedName?: string;
    SYSDAYS_ShortestName?: string;
    SYSDAYS_LowerCaseShortestName?: string;
    SYSDAYS_UpperCaseShortestName?: string;
    SYSDAYS_TitleCaseShortestName?: string; 
}




interface IT_SYS_Language_MonthNames
{
    SYSMONTHS_SYSLANG_LCID: number;
    SYSMONTHS_MonthIndexBaseZero: number;
    SYSMONTHS_MonthIndexBaseOne?: number;
    SYSMONTHS_SYSLANG_IetfLanguageTag?: string;
    SYSMONTHS_Name?: string;
    SYSMONTHS_LowerCaseName?: string;
    SYSMONTHS_UpperCaseName?: string;
    SYSMONTHS_TitleCaseName?: string;
    SYSMONTHS_GenitiveName?: string;
    SYSMONTHS_LowerCaseGenitiveName?: string;
    SYSMONTHS_UpperCaseGenitiveName?: string;
    SYSMONTHS_TitleCaseGenitiveName?: string;
    SYSMONTHS_AbbreviatedName?: string;
    SYSMONTHS_LowerCaseAbbreviatedName?: string;
    SYSMONTHS_UpperCaseAbbreviatedName?: string;
    SYSMONTHS_TitleCaseAbbreviatedName?: string;
    SYSMONTHS_AbbreviatedGenitiveName?: string;
    SYSMONTHS_LowerCaseAbbreviatedGenitiveName?: string;
    SYSMONTHS_UpperCaseAbbreviatedGenitiveName?: string;
    SYSMONTHS_TitleCaseAbbreviatedGenitiveName?: string; 
}

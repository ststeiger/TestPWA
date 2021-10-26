/*
	--CL_THTD_List.sql
	declare @BE_ID int; set @BE_ID = 12435;
	declare @CL uniqueidentifier; set @CL = 'f234b24a-072f-4901-83d5-30d165cd3129';
*/


-- Checklist.Init()
DECLARE @BE_ID int
DECLARE @CL nvarchar(36)
SET @BE_ID=12435
SET @CL=N'f84cdf05-6060-47af-801a-af4fe4603a40'



;with [TH] as
	(
		select
			[ZOCLTT_UID] as [TABLE_UID],
			[ZOCLTH_UID] as [THTD_UID],
			
			'0' as [initialSort],
			[ZOCLTT_Sort] as [Table_Sort],
			'TH' as [Type],
		
			case
				when not [ZOCLLA_UID] is null then 1
				else 0
			end as [isLabel],

			case
				when not [ZOCLTB_UID] is null then 1
				else 0
			end as [isTextBox],
			
			case
				when not [ZOCLTA_UID] is null then 1
				else 0
			end as [isTextArea],

			case
				when not [ZOCLCB_UID] is null then 1
				else 0
			end as [isCheckBox],

			case
				when not [ZOCLDD_UID] is null then 1
				else 0
			end as [isDropDown],
			
			case
				when not [ZOCLIM_UID] is null then 1
				else 0
			end as [isImage],
			
			case [BE_Language]
				when 'EN' then [ZOCLLA_Lang_EN]
				when 'FR' then [ZOCLLA_Lang_FR]
				when 'IT' then [ZOCLLA_Lang_IT]
				else [ZOCLLA_Lang_DE]
			end as [LA_Lang],
			
			isnull([ZOCLLA_Align], [ZOCLIM_Align]) as [LA_Align],
			
			case [BE_Language]
				when 'EN' then [ZOCLTB_Lang_EN]
				when 'FR' then [ZOCLTB_Lang_FR]
				when 'IT' then [ZOCLTB_Lang_IT]
				else [ZOCLTB_Lang_DE]
			end as [TB_Lang],
			
			[ZOCLTA_Text] as [TA_Text],
			
			case [BE_Language]
				when 'EN' then [ZOCLCB_Lang_EN]
				when 'FR' then [ZOCLCB_Lang_FR]
				when 'IT' then [ZOCLCB_Lang_IT]
				else [ZOCLCB_Lang_DE]
			end as [CB_Lang],
			[ZOCLCB_Checked] as [CB_Checked],
			
			[ZOCLDD_CLKA_UID] as [DD_Reference],
			[ZOCLDD_CLKA_UID_Preselected] as [DD_Selected],
			
			[ZOCLIM_Src] as [IM_Src],
			
			null as [Height],
			null as [Width],
			
			[ZOCLTH_Sort] as [Sort]
		from
			[T_CL_ZO_Table]
			inner join [T_CL_ZO_Header] on [ZOCLTH_ZOCLTT_UID] = [ZOCLTT_UID] and [ZOCLTH_Status] = 1
			left join [T_CL_ZO_Label] on [ZOCLLA_ZOCLTH_UID] = [ZOCLTH_UID] and [ZOCLLA_Status] = 1
			left join [T_CL_ZO_TextBox] on [ZOCLTB_ZOCLTH_UID] = [ZOCLTH_UID] and [ZOCLTB_Status] = 1
			left join [T_CL_ZO_TextArea] on [ZOCLTA_ZOCLTH_UID] = [ZOCLTH_UID] and [ZOCLTA_Status] = 1
			left join [T_CL_ZO_CheckBox] on [ZOCLCB_ZOCLTH_UID] = [ZOCLTH_UID] and [ZOCLCB_Status] = 1
			left join [T_CL_ZO_DropDown] on [ZOCLDD_ZOCLTH_UID] = [ZOCLTH_UID] and [ZOCLDD_Status] = 1
			left join [T_CL_ZO_Image] on [ZOCLIM_ZOCLTH_UID] = [ZOCLTH_UID] and [ZOCLIM_Status] = 1
			inner join [T_Benutzer] on [BE_ID] = @BE_ID
		where
			(
				([ZOCLTT_Status] = 1) and
				([ZOCLTT_CL_UID] = @CL)
			)
	)
,[TD] as
	(
		select
			[ZOCLTT_UID] as [TABLE_UID],
			[ZOCLTD_UID] as [THTD_UID],
			
			'1' as [initialSort],
			[ZOCLTT_Sort] as [Table_Sort],
			'TD' as [Type],
		
			case
				when not [ZOCLLA_UID] is null then 1
				else 0
			end as [isLabel],

			case
				when not [ZOCLTB_UID] is null then 1
				else 0
			end as [isTextBox],

			case
				when not [ZOCLTA_UID] is null then 1
				else 0
			end as [isTextArea],

			case
				when not [ZOCLCB_UID] is null then 1
				else 0
			end as [isCheckBox],

			case
				when not [ZOCLDD_UID] is null then 1
				else 0
			end as [isDropDown],
			
			case
				when not [ZOCLIM_UID] is null then 1
				else 0
			end as [isImage],
			
			case [BE_Language]
				when 'EN' then [ZOCLLA_Lang_EN]
				when 'FR' then [ZOCLLA_Lang_FR]
				when 'IT' then [ZOCLLA_Lang_IT]
				else [ZOCLLA_Lang_DE]
			end as [LA_Lang],
			
			isnull([ZOCLLA_Align], [ZOCLIM_Align]) as [LA_Align],
			
			case [BE_Language]
				when 'EN' then [ZOCLTB_Lang_EN]
				when 'FR' then [ZOCLTB_Lang_FR]
				when 'IT' then [ZOCLTB_Lang_IT]
				else [ZOCLTB_Lang_DE]
			end as [TB_Lang],

			[ZOCLTA_Text] as [TA_Lang],

			case [BE_Language]
				when 'EN' then [ZOCLCB_Lang_EN]
				when 'FR' then [ZOCLCB_Lang_FR]
				when 'IT' then [ZOCLCB_Lang_IT]
				else [ZOCLCB_Lang_DE]
			end as [CB_Lang],
			[ZOCLCB_Checked] as [CB_Checked],
			
			[ZOCLDD_CLKA_UID] as [DD_Reference],
			[ZOCLDD_CLKA_UID_Preselected] as [DD_Selected],
			
			[ZOCLIM_Src] as [IM_Src],

			[ZOCLTD_Height] as [Height],
			[ZOCLTD_Width] as [Width],

			[ZOCLTD_Sort] as [Sort]
		from
			[T_CL_ZO_Table]
			inner join [T_CL_ZO_Cell] on [ZOCLTD_ZOCLTT_UID] = [ZOCLTT_UID] and [ZOCLTD_Status] = 1
			left join [T_CL_ZO_Label] on [ZOCLLA_ZOCLTD_UID] = [ZOCLTD_UID] and [ZOCLLA_Status] = 1
			left join [T_CL_ZO_TextBox] on [ZOCLTB_ZOCLTD_UID] = [ZOCLTD_UID] and [ZOCLTB_Status] = 1
			left join [T_CL_ZO_TextArea] on [ZOCLTA_ZOCLTD_UID] = [ZOCLTD_UID] and [ZOCLTA_Status] = 1
			left join [T_CL_ZO_CheckBox] on [ZOCLCB_ZOCLTD_UID] = [ZOCLTD_UID] and [ZOCLCB_Status] = 1
			left join [T_CL_ZO_DropDown] on [ZOCLDD_ZOCLTD_UID] = [ZOCLTD_UID] and [ZOCLDD_Status] = 1
			left join [T_CL_ZO_Image] on [ZOCLIM_ZOCLTD_UID] = [ZOCLTD_UID] and [ZOCLIM_Status] = 1
			inner join [T_Benutzer] on [BE_ID] = @BE_ID
		where
			(
				([ZOCLTT_Status] = 1) and
				([ZOCLTT_CL_UID] = @CL)
			)
	)
select
	[TABLE_UID],
	[THTD_UID],
	[Type],

	[Height],
	[Width],

	[isLabel],
	[isTextBox],
	[isTextArea],
	[isCheckBox],
	[isDropDown],
	[isImage],
	
	case
		when not ([isLabel] = 1 or [isTextBox] = 1 or [isTextArea] = 1 or [isCheckBox] = 1 or [isDropDown] = 1 or [isImage] = 1) then 1
		else 0
	end as [isEmpty],
	
	[LA_Lang],
	[LA_Align],
	[TB_Lang],
	[TA_Text],
	[CB_Lang],
	[CB_Checked],
	[DD_Reference],
	[DD_Selected],
	[IM_Src]
from
	(
		select * from [TH]
		union all
		select * from [tD]
	) as [tTHTD]
order by
	[Table_Sort],
	[initialSort],
	cast(left([Sort], charindex('.', [Sort]) - 1) as int),
	cast(right([Sort], len([Sort]) - charindex('.', [Sort])) as int);
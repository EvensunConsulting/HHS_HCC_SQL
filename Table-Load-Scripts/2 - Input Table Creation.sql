USE [RiskAdjustment] --- set this to the database you will use ----



IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment]') AND type in (N'U'))
DROP TABLE [dbo].[Enrollment]
GO

CREATE TABLE [dbo].[Enrollment](
	[RowNo] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [varchar](50) NOT NULL,
	[EDGE_MemberID] [varchar](50) NULL,
	[GroupID] [varchar](100) NULL,
	[MemberUID] [varchar](100) NULL,
	[SSN] [varchar](9) NULL,
	[PolicyID] [varchar](50) NULL,
	[CMSPolicyID] [varchar](50) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Suffix] [varchar](5) NULL,
	[EffDat] [date] NOT NULL,
	[Expdat] [date] NOT NULL,
	[HIOS_ID] [varchar](16) NOT NULL,
	[Premium] [float] NOT NULL,
	[aptc] [float] NULL,
	[Gender] [varchar](1) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[SubscriberFlag] [varchar](1) NOT NULL,
	[SubscriberNumber] [varchar](50) NULL,
	[MetalLevel] [varchar](12) NOT NULL,
	[Relationship] [varchar](50) NULL,
	[PaidThroughDate] [date] NULL,
	[EPAI] [nvarchar](50) NULL,
	[RatingArea] [varchar](10) NULL,
	[County] [varchar](50) null, 
	[State] [varchar](2) NOT NULL,
	[Market] [varchar](1) NOT NULL,
	[zip_code] [varchar](9) NULL,
	[Race] [varchar](8) NULL,
	[ethnicity] [varchar](5) NULL,
	[aptc_flag] [varchar](1) NULL,
	[statepremiumsubsidy_flag] [varchar](1) NULL,
	[stateCSR_flag] [varchar](1) NULL,
	[ichra_qsehra] [varchar](1) NULL,
	[qsehra_spouse] [varchar](1) NULL,
	[qsehra_medical] [varchar](1) NULL,
	[BrokerNPN] [varchar](15) NULL,
	[BrokerName] [varchar](100) NULL,
	[CommissionPaid] [float] NULL,
	[ExchangeSubscriberID] [varchar](10) NULL,
	[ExchangeMemberID] [varchar](10) NULL,
	[Group_number] [varchar](50) null,
	[UDF_1] [varchar](500) NULL,
	[UDF_2] [varchar](500) NULL,
	[UDF_3] [varchar](500) NULL,
	[UDF_4] [varchar](500) NULL,
	[UDF_5] [varchar](500) NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[GroupInfo]    Script Date: 3/17/2025 10:23:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Group]') AND type in (N'U'))
DROP TABLE [dbo].[Groups]
GO

/****** Object:  Table [dbo].[GroupInfo]    Script Date: 3/17/2025 10:23:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Groups](
	[GroupID] [varchar](100) NOT NULL,
	[GroupName] [varchar](100) NULL,
	[GroupAddressLine1] [varchar](100) NULL,
	[GroupAddressLine2] [varchar](100) NULL,
	[GroupCity] [varchar](100) NULL,
	[GroupState] [varchar](100) NULL,
	[ZIP] [varchar](100) NULL,
	[County] [varchar](100) NULL,
	[ratingarea] nvarchar(10) null,
	[GroupEffectiveDate] [date] NULL,
	[GroupTerminationDate] [date] NULL,
	[FTEcount] [varchar](100) NULL,
	[NAICSCode] [varchar](100) NULL,
	[EIN] [varchar](100) NULL
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[MedicalClaims]    Script Date: 1/3/2023 5:42:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MedicalClaims]') AND type in (N'U'))
DROP TABLE [dbo].[MedicalClaims]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MedicalClaims](
	[RowNo] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [varchar](50) NOT NULL,
	[edge_memberID] [varchar](100) NULL,
	[ClaimNumber] [varchar](50) NOT NULL,
	[edge_claimnumber] varchar(100) null,
	[LineNumber] [int] NOT NULL,
	[FormType] [varchar](1) NOT NULL,
	[BillType] [varchar](4) NULL,
	[StatementFrom] [date] NOT NULL,
	[StatementTo] [date] NOT NULL,
	[PaidDate] [date] NULL,
	[LineServiceDateFrom] [date] NOT NULL,
	[LineServiceDateTo] [date] NULL,
	[BilledAmount] [float] NULL,
	[AllowedAmount] [float] NOT NULL,
	[PaidAmount] [float] NOT NULL,
	[RevenueCode] [varchar](4) NULL,
	[ServiceCode] [nvarchar](10) NULL,
	[ServiceTypeCode] [nvarchar](2) NULL,
	[Modifier1] [varchar](2) NULL,
	[Modifier2] [varchar](2) NULL,
	[Modifier3] [varchar](2) NULL,
	[units] float null,
	[PlaceOfServiceCode] [varchar](2) NULL,
	[DeniedFlag] [varchar](1) NULL,
	[DX1] [varchar](10)  NULL,
	[DX2] [varchar](10) NULL,
	[DX3] [varchar](10) NULL,
	[DX4] [varchar](10) NULL,
	[DX5] [varchar](10) NULL,
	[DX6] [varchar](10) NULL,
	[DX7] [varchar](10) NULL,
	[DX8] [varchar](10) NULL,
	[DX9] [varchar](10) NULL,
	[DX10] [varchar](10) NULL,
	[DX11] [varchar](10) NULL,
	[DX12] [varchar](10) NULL,
	[DX13] [varchar](10) NULL,
	[DX14] [varchar](10) NULL,
	[DX15] [varchar](10) NULL,
	[DX16] [varchar](10) NULL,
	[DX17] [varchar](10) NULL,
	[DX18] [varchar](10) NULL,
	[DX19] [varchar](10) NULL,
	[DX20] [varchar](10) NULL,
	[DX21] [varchar](10) NULL,
	[DX22] [varchar](10) NULL,
	[DX23] [varchar](10) NULL,
	[DX24] [varchar](10) NULL,
	[DX25] [varchar](10) NULL,
	[DeniedReasonCode] varchar(10) null,
	[DeniedReasonDesc] varchar(1000) null,
	[DischargeCode] [varchar](2) NULL,
	[BillingProviderID] [varchar](15) NULL,
	[BillingProviderIDQualifier] [varchar](2) NULL,
	[RenderingProviderID] [varchar](15) NULL,
	[RenderingProviderIDQualifier] [varchar](2) NULL,
	[BillingProviderTIN] varchar(50) null,
	[NetworkIndicator] varchar(1) NULL,
	[DerivedIndicator] varchar(1) NULL,
	[InterimBillOrigClaimId] varchar(50) NULL,
	[InterimBillOrigClaimLine] int null,
	[PriorClaimID] varchar(50) null,
	[ClaimVersion] int DEFAULT 1,
	[voidreplaceindic] varchar(1) null,
	[udf1] varchar(500) null,
	[udf2] varchar(500) null,
	[udf3] varchar(500) null,
	[udf4] varchar(500) null,
	[udf5] varchar(500) null

 CONSTRAINT [PK_MedicalClaims] PRIMARY KEY CLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PharmacyClaims]') AND type in (N'U'))
DROP TABLE [dbo].[PharmacyClaims]
GO

/****** Object:  Table [dbo].[PharmacyClaims]    Script Date: 1/3/2023 5:52:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PharmacyClaims](
	[RowNo] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [varchar](50) NOT NULL,
	[ClaimNumber] [varchar](50) NOT NULL,
	[edgeclaimnumber] [varchar](100) null,
	[NDC] [varchar](20) NOT NULL,
	[FilledDate] [date] NOT NULL,
	[PaidDate] [date] NOT NULL,
	[BilledAmount] [float] NOT NULL,
	[AllowedAmount] [float] NOT NULL,
	[PaidAmount] [float] NOT NULL,
	[dayssupply] int null,
	[therapeuticclass] varchar(100) null,
	[refillno] int null,
	units float null,
	unitmeasure varchar(100) null,
	tier varchar(5) null,
	deniedflag varchar(1) null,
	PharmacyIdentifier varchar(50) null,
	Pharmacy_IDQUalifier varchar(2) null,
	Dispensing_status_code varchar(1) null,
	DerivedIndicator varchar(1) null,
	RXRefNo varchar(50) null,
	PrescriberID varchar(50) null,
	PriorClaimID varchar(50) null,
	VoidReplaceIndic varchar(1) null,
	ClaimVersion int default 1,
	RebateAmount float null,
	udf1 varchar(500) null,
	udf2 varchar(500) null,
	udf3 varchar(500) null,
	udf4 varchar(500) null,
	udf5 varchar(500) null
 CONSTRAINT [PK_PharmacyClaims] PRIMARY KEY CLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO




IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hcc_list]') AND type in (N'U'))
DROP TABLE [dbo].[hcc_list]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hcc_list](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MBR_ID] [varchar](100) NULL,
	[EDGE_MemberID] [varchar](50) NULL,
	[MemberUID] varchar(100) null,
	[SSN] varchar(9) null,
	[PolicyID] varchar(50) null,
	[CMSPolicyID] varchar(50) null,
	[FirstName] varchar(100) null,
	[LastName] varchar(100) null,
	[Suffix] varchar(5) null,
	[EFF_DATE] [date] NULL,
	[EXP_DATE] [date] NULL,
	[METAL] [varchar](12) NULL,
	[HIOS] [varchar](16) NULL,
	[CSR] [int] NULL,
	[DOB] [date] NULL,
	[SEX] [varchar](1) NULL,
	[state] [varchar](2) NULL,
	[ratingarea] [varchar](10) NULL,
	[epai] [varchar](5) NULL,
	[zip_code] [varchar](9) NULL,
	[race] [varchar](2) NULL,
	[ethnicity] [varchar](2) NULL,
	[aptc_flag] [varchar](1) NULL,
	[statepremiumsubsidy_flag] [varchar](1) NULL,
	[statecsr_flag] [varchar](1) NULL,
	[ichra_qsehra] [varchar](1) NULL,
	[qsehra_spouse] [varchar](1) NULL,
	[qsehra_medical] [varchar](1) NULL,
	[BrokerNPN] varchar(15) null,
	[BrokerName] varchar(100) null,
	[groupid] varchar(100) null,
	[udf_1] [varchar](50) NULL,
	[udf_2] [varchar](50) NULL,
	[udf_3] [varchar](50) NULL,
	[udf_4] [varchar](50) NULL,
	[udf_5] [varchar](50) NULL,
	[paidthroughdate] [date] NULL,
	[subscriberflag] [varchar](1) NULL,
	[subscribernumber] [varchar](50) NULL,
	[ExchangeSubscriberID] varchar(10) null,
	[ExchangeMemberID] varchar(10) null,
	[market] [int] NULL,
	[age_first] [int] NULL,
	[age_last] [int] NULL,
	[enr_dur] [int] NULL,
	[risk_score] [float] NULL,
	[risk_score_no_demog] [float] NULL,
	[catastrophic_risk_score] [float] NULL,
	[bronze_risk_score] [float] NULL,
	[silver_risk_score] [float] NULL,
	[gold_risk_score] [float] NULL,
	[platinum_risk_score] [float] NULL,
	[renewal_flag] [int] NULL,
	[premium] [float] NULL,
	[aptc_amount] float null,
	[risk_transfer_est] [float] NULL,
	[medical_paid] [float] NULL,
	[medical_allowed] [float] NULL,
	[pharmacy_allowed] [float] NULL,
	[pharmacy_paid] [float] NULL,
	[hcrp_est] [float] NULL,
	[ibnr_est] [float] NULL,
	[prof_paid] [float] NULL,
	[prof_allowed] [float] NULL,
	[ip_paid] [float] NULL,
	[ip_allowed] [float] NULL,
	[op_paid] [float] NULL,
	[op_allowed] [float] NULL,
	[rx_rebate] float null,
	[commissions] float null,
	[admin] float null,
	[exchange_fee] float null,
	[TRANSPLANT_FLAG] [int] NULL,
	[HCC_COUNT] [int] NULL,
	[SEVERE_V3] [int] NULL,
	[AGE0_MALE] [int] NULL,
	[AGE1_MALE] [int] NULL,
	[AGE0_FEMALE] [int] NULL,
	[AGE1_FEMALE] [int] NULL,
	[MAGE_LAST_2_4] [int] NULL,
	[MAGE_LAST_5_9] [int] NULL,
	[MAGE_LAST_10_14] [int] NULL,
	[MAGE_LAST_15_20] [int] NULL,
	[MAGE_LAST_21_24] [int] NULL,
	[MAGE_LAST_25_29] [int] NULL,
	[MAGE_LAST_30_34] [int] NULL,
	[MAGE_LAST_35_39] [int] NULL,
	[MAGE_LAST_40_44] [int] NULL,
	[MAGE_LAST_45_49] [int] NULL,
	[MAGE_LAST_50_54] [int] NULL,
	[MAGE_LAST_55_59] [int] NULL,
	[MAGE_LAST_60_GT] [int] NULL,
	[FAGE_LAST_2_4] [int] NULL,
	[FAGE_LAST_5_9] [int] NULL,
	[FAGE_LAST_10_14] [int] NULL,
	[FAGE_LAST_15_20] [int] NULL,
	[FAGE_LAST_21_24] [int] NULL,
	[FAGE_LAST_25_29] [int] NULL,
	[FAGE_LAST_30_34] [int] NULL,
	[FAGE_LAST_35_39] [int] NULL,
	[FAGE_LAST_40_44] [int] NULL,
	[FAGE_LAST_45_49] [int] NULL,
	[FAGE_LAST_50_54] [int] NULL,
	[FAGE_LAST_55_59] [int] NULL,
	[FAGE_LAST_60_GT] [int] NULL,
	[HHS_HCC001] [int] NULL,
	[HHS_HCC002] [int] NULL,
	[HHS_HCC003] [int] NULL,
	[HHS_HCC004] [int] NULL,
	[HHS_HCC006] [int] NULL,
	[HHS_HCC008] [int] NULL,
	[HHS_HCC009] [int] NULL,
	[HHS_HCC010] [int] NULL,
	[HHS_HCC011] [int] NULL,
	[HHS_HCC012] [int] NULL,
	[HHS_HCC013] [int] NULL,
	[HHS_HCC018] [int] NULL,
	[HHS_HCC019] [int] NULL,
	[HHS_HCC020] [int] NULL,
	[HHS_HCC021] [int] NULL,
	[HHS_HCC022] [int] NULL,
	[HHS_HCC023] [int] NULL,
	[HHS_HCC026] [int] NULL,
	[HHS_HCC027] [int] NULL,
	[HHS_HCC028] [int] NULL,
	[HHS_HCC029] [int] NULL,
	[HHS_HCC030] [int] NULL,
	[HHS_HCC034] [int] NULL,
	[HHS_HCC035_1] [int] NULL,
	[HHS_HCC035_2] [int] NULL,
	[HHS_HCC036] [int] NULL,
	[HHS_HCC037_1] [int] NULL,
	[HHS_HCC037_2] [int] NULL,
	[HHS_HCC041] [int] NULL,
	[HHS_HCC042] [int] NULL,
	[HHS_HCC045] [int] NULL,
	[HHS_HCC046] [int] NULL,
	[HHS_HCC047] [int] NULL,
	[HHS_HCC048] [int] NULL,
	[HHS_HCC054] [int] NULL,
	[HHS_HCC055] [int] NULL,
	[HHS_HCC056] [int] NULL,
	[HHS_HCC057] [int] NULL,
	[HHS_HCC061] [int] NULL,
	[HHS_HCC062] [int] NULL,
	[HHS_HCC063] [int] NULL,
	[HHS_HCC066] [int] NULL,
	[HHS_HCC067] [int] NULL,
	[HHS_HCC068] [int] NULL,
	[HHS_HCC069] [int] NULL,
	[HHS_HCC070] [int] NULL,
	[HHS_HCC071] [int] NULL,
	[HHS_HCC073] [int] NULL,
	[HHS_HCC074] [int] NULL,
	[HHS_HCC075] [int] NULL,
	[HHS_HCC081] [int] NULL,
	[HHS_HCC082] [int] NULL,
	[HHS_HCC083] [int] NULL,
	[HHS_HCC084] [int] NULL,
	[HHS_HCC087_1] [int] NULL,
	[HHS_HCC087_2] [int] NULL,
	[HHS_HCC088] [int] NULL,
	[HHS_HCC090] [int] NULL,
	[HHS_HCC094] [int] NULL,
	[HHS_HCC096] [int] NULL,
	[HHS_HCC097] [int] NULL,
	[HHS_HCC102] [int] NULL,
	[HHS_HCC103] [int] NULL,
	[HHS_HCC106] [int] NULL,
	[HHS_HCC107] [int] NULL,
	[HHS_HCC108] [int] NULL,
	[HHS_HCC109] [int] NULL,
	[HHS_HCC110] [int] NULL,
	[HHS_HCC111] [int] NULL,
	[HHS_HCC112] [int] NULL,
	[HHS_HCC113] [int] NULL,
	[HHS_HCC114] [int] NULL,
	[HHS_HCC115] [int] NULL,
	[HHS_HCC117] [int] NULL,
	[HHS_HCC118] [int] NULL,
	[HHS_HCC119] [int] NULL,
	[HHS_HCC120] [int] NULL,
	[HHS_HCC121] [int] NULL,
	[HHS_HCC122] [int] NULL,
	[HHS_HCC123] [int] NULL,
	[HHS_HCC125] [int] NULL,
	[HHS_HCC126] [int] NULL,
	[HHS_HCC127] [int] NULL,
	[HHS_HCC128] [int] NULL,
	[HHS_HCC129] [int] NULL,
	[HHS_HCC130] [int] NULL,
	[HHS_HCC131] [int] NULL,
	[HHS_HCC132] [int] NULL,
	[HHS_HCC135] [int] NULL,
	[HHS_HCC137] [int] NULL,
	[HHS_HCC138] [int] NULL,
	[HHS_HCC139] [int] NULL,
	[HHS_HCC142] [int] NULL,
	[HHS_HCC145] [int] NULL,
	[HHS_HCC146] [int] NULL,
	[HHS_HCC149] [int] NULL,
	[HHS_HCC150] [int] NULL,
	[HHS_HCC151] [int] NULL,
	[HHS_HCC153] [int] NULL,
	[HHS_HCC154] [int] NULL,
	[HHS_HCC156] [int] NULL,
	[HHS_HCC158] [int] NULL,
	[HHS_HCC159] [int] NULL,
	[HHS_HCC160] [int] NULL,
	[HHS_HCC161_1] [int] NULL,
	[HHS_HCC161_2] [int] NULL,
	[HHS_HCC162] [int] NULL,
	[HHS_HCC163] [int] NULL,
	[HHS_HCC174] [int] NULL,
	[HHS_HCC183] [int] NULL,
	[HHS_HCC184] [int] NULL,
	[HHS_HCC187] [int] NULL,
	[HHS_HCC188] [int] NULL,
	[HHS_HCC203] [int] NULL,
	[HHS_HCC204] [int] NULL,
	[HHS_HCC205] [int] NULL,
	[HHS_HCC207] [int] NULL,
	[HHS_HCC208] [int] NULL,
	[HHS_HCC209] [int] NULL,
	[HHS_HCC210] [int] NULL,
	[HHS_HCC211] [int] NULL,
	[HHS_HCC212] [int] NULL,
	[HHS_HCC217] [int] NULL,
	[HHS_HCC218] [int] NULL,
	[HHS_HCC219] [int] NULL,
	[HHS_HCC223] [int] NULL,
	[HHS_HCC226] [int] NULL,
	[HHS_HCC228] [int] NULL,
	[HHS_HCC234] [int] NULL,
	[HHS_HCC242] [int] NULL,
	[HHS_HCC243] [int] NULL,
	[HHS_HCC244] [int] NULL,
	[HHS_HCC245] [int] NULL,
	[HHS_HCC246] [int] NULL,
	[HHS_HCC247] [int] NULL,
	[HHS_HCC248] [int] NULL,
	[HHS_HCC249] [int] NULL,
	[HHS_HCC251] [int] NULL,
	[HHS_HCC253] [int] NULL,
	[HHS_HCC254] [int] NULL,
	[G01] [int] NULL,
	[G02B] [int] NULL,
	[G02D] [int] NULL,
	[G03] [int] NULL,
	[G04] [int] NULL,
	[G06A] [int] NULL,
	[G07A] [int] NULL,
	[G08] [int] NULL,
	[G09A] [int] NULL,
	[G09C] [int] NULL,
	[G10] [int] NULL,
	[G11] [int] NULL,
	[G12] [int] NULL,
	[G13] [int] NULL,
	[G14] [int] NULL,
	[G21] [int] NULL,
	[G22] [int] NULL,
	[G23] [int] NULL,
	[g24] [int] null,
	[G15A] [int] NULL,
	[G16] [int] NULL,
	[G17A] [int] NULL,
	[G18A] [int] NULL,
	[G19B] [int] NULL,
	[INT_GROUP_H] [int] NULL,
	[SEVERE_1_HCC] [int] NULL,
	[SEVERE_2_HCC] [int] NULL,
	[SEVERE_3_HCC] [int] NULL,
	[SEVERE_4_HCC] [int] NULL,
	[SEVERE_5_HCC] [int] NULL,
	[SEVERE_6_HCC] [int] NULL,
	[SEVERE_7_HCC] [int] NULL,
	[SEVERE_8_HCC] [int] NULL,
	[SEVERE_9_HCC] [int] NULL,
	[SEVERE_10_HCC] [int] NULL,
	[TRANSPLANT_4_HCC] [int] NULL,
	[TRANSPLANT_5_HCC] [int] NULL,
	[TRANSPLANT_6_HCC] [int] NULL,
	[TRANSPLANT_7_HCC] [int] NULL,
	[TRANSPLANT_8_HCC] [int] NULL,
	[ED_1] [int] NULL,
	[ED_2] [int] NULL,
	[ED_3] [int] NULL,
	[ED_4] [int] NULL,
	[ED_5] [int] NULL,
	[ED_6] [int] NULL,
	[ED_7] [int] NULL,
	[ED_8] [int] NULL,
	[ED_9] [int] NULL,
	[ED_10] [int] NULL,
	[ED_11] [int] NULL,
	[RXC_01] [int] NULL,
	[RXC_02] [int] NULL,
	[RXC_03] [int] NULL,
	[RXC_04] [int] NULL,
	[RXC_05] [int] NULL,
	[RXC_06] [int] NULL,
	[RXC_07] [int] NULL,
	[RXC_08] [int] NULL,
	[RXC_09] [int] NULL,
	[RXC_10] [int] NULL,
	[RXC_01_x_HCC001] [int] NULL,
	[RXC_02_x_HCC037_1_036_035_2_035_1_034] [int] NULL,
	[RXC_03_x_HCC142] [int] NULL,
	[RXC_04_x_HCC184_183_187_188] [int] NULL,
	[RXC_05_x_HCC048_041] [int] NULL,
	[RXC_06_x_HCC018_019_020_021] [int] NULL,
	[RXC_07_x_HCC018_019_020_021] [int] NULL,
	[RXC_08_x_HCC118] [int] NULL,
	[RXC_09_x_HCC056_057_and_048_041] [int] NULL,
	[RXC_09_x_HCC056] [int] NULL,
	[RXC_09_x_HCC057] [int] NULL,
	[RXC_09_x_HCC048_041] [int] NULL,
	[RXC_10_x_HCC159_158] [int] NULL,
	[ACF_01] [INT] NULL,
	[IHCC_Severity5] [int] NULL,
	[IHCC_Severity4] [int] NULL,
	[IHCC_severity3] [int] NULL,
	[ihcc_severity2] [int] NULL,
	[ihcc_severity1] [int] NULL,
	[ihcc_age1] [int] NULL,
	[ihcc_extremely_immature] [int] NULL,
	[ihcc_immature] [int] NULL,
	[ihcc_premature_multiples] [int] NULL,
	[ihcc_term] [int] NULL,
	[EXTREMELY_IMMATURE_X_SEVERITY5] [int] NULL,
	[EXTREMELY_IMMATURE_X_SEVERITY4] [int] NULL,
	[EXTREMELY_IMMATURE_X_SEVERITY3] [int] NULL,
	[EXTREMELY_IMMATURE_X_SEVERITY2] [int] NULL,
	[EXTREMELY_IMMATURE_X_SEVERITY1] [int] NULL,
	[IMMATURE_X_SEVERITY5] [int] NULL,
	[IMMATURE_X_SEVERITY4] [int] NULL,
	[IMMATURE_X_SEVERITY3] [int] NULL,
	[IMMATURE_X_SEVERITY2] [int] NULL,
	[IMMATURE_X_SEVERITY1] [int] NULL,
	[PREMATURE_MULTIPLES_X_SEVERITY5] [int] NULL,
	[PREMATURE_MULTIPLES_X_SEVERITY4] [int] NULL,
	[PREMATURE_MULTIPLES_X_SEVERITY3] [int] NULL,
	[PREMATURE_MULTIPLES_X_SEVERITY2] [int] NULL,
	[PREMATURE_MULTIPLES_X_SEVERITY1] [int] NULL,
	[TERM_X_SEVERITY5] [int] NULL,
	[TERM_X_SEVERITY4] [int] NULL,
	[TERM_X_SEVERITY3] [int] NULL,
	[TERM_X_SEVERITY2] [int] NULL,
	[TERM_X_SEVERITY1] [int] NULL,
	[AGE1_X_SEVERITY5] [int] NULL,
	[AGE1_X_SEVERITY4] [int] NULL,
	[AGE1_X_SEVERITY3] [int] NULL,
	[AGE1_X_SEVERITY2] [int] NULL,
	[AGE1_X_SEVERITY1] [int] NULL,
	[member_months] as datediff(d,eff_date, exp_date)/30.00
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((1)) FOR [market]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TRANSPLANT_FLAG]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HCC_COUNT]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_V3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE0_MALE]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE1_MALE]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE0_FEMALE]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE1_FEMALE]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_2_4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_5_9]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_10_14]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_15_20]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_21_24]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_25_29]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_30_34]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_35_39]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_40_44]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_45_49]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_50_54]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_55_59]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [MAGE_LAST_60_GT]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_2_4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_5_9]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_10_14]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_15_20]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_21_24]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_25_29]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_30_34]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_35_39]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_40_44]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_45_49]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_50_54]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_55_59]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [FAGE_LAST_60_GT]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC001]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC002]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC003]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC004]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC006]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC008]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC009]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC010]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC011]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC012]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC013]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC018]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC019]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC020]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC021]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC022]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC023]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC026]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC027]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC028]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC029]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC030]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC034]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC035_1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC035_2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC036]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC037_1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC037_2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC041]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC042]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC045]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC046]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC047]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC048]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC054]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC055]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC056]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC057]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC061]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC062]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC063]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC066]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC067]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC068]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC069]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC070]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC071]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC073]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC074]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC075]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC081]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC082]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC083]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC084]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC087_1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC087_2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC088]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC090]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC094]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC096]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC097]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC102]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC103]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC106]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC107]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC108]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC109]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC110]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC111]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC112]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC113]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC114]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC115]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC117]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC118]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC119]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC120]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC121]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC122]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC123]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC125]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC126]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC127]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC128]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC129]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC130]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC131]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC132]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC135]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC137]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC138]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC139]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC142]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC145]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC146]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC149]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC150]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC151]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC153]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC154]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC156]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC158]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC159]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC160]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC161_1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC161_2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC162]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC163]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC174]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC183]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC184]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC187]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC188]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC203]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC204]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC205]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC207]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC208]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC209]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC210]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC211]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC212]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC217]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC218]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC219]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC223]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC226]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC228]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC234]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC242]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC243]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC244]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC245]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC246]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC247]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC248]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC249]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC251]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC253]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [HHS_HCC254]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G01]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G02B]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G02D]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G03]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G04]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G06A]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G07A]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G08]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G09A]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G09C]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G10]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G11]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G12]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G13]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G14]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G21]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G22]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G23]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G15A]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G16]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G17A]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G18A]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [G19B]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [INT_GROUP_H]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_1_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_2_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_3_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_4_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_5_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_6_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_7_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_8_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_9_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [SEVERE_10_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TRANSPLANT_4_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TRANSPLANT_5_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TRANSPLANT_6_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TRANSPLANT_7_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TRANSPLANT_8_HCC]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_5]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_6]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_7]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_8]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_9]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_10]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ED_11]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_01]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_02]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_03]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_04]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_05]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_06]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_07]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_08]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_09]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_10]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_01_x_HCC001]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_02_x_HCC037_1_036_035_2_035_1_034]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_03_x_HCC142]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_04_x_HCC184_183_187_188]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_05_x_HCC048_041]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_06_x_HCC018_019_020_021]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_07_x_HCC018_019_020_021]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_08_x_HCC118]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_09_x_HCC056_057_and_048_041]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_09_x_HCC056]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_09_x_HCC057]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_09_x_HCC048_041]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [RXC_10_x_HCC159_158]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IHCC_Severity5]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IHCC_Severity4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IHCC_severity3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ihcc_severity2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ihcc_severity1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ihcc_age1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ihcc_extremely_immature]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ihcc_immature]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ihcc_premature_multiples]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [ihcc_term]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [EXTREMELY_IMMATURE_X_SEVERITY5]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [EXTREMELY_IMMATURE_X_SEVERITY4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [EXTREMELY_IMMATURE_X_SEVERITY3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [EXTREMELY_IMMATURE_X_SEVERITY2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [EXTREMELY_IMMATURE_X_SEVERITY1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IMMATURE_X_SEVERITY5]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IMMATURE_X_SEVERITY4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IMMATURE_X_SEVERITY3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IMMATURE_X_SEVERITY2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [IMMATURE_X_SEVERITY1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [PREMATURE_MULTIPLES_X_SEVERITY5]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [PREMATURE_MULTIPLES_X_SEVERITY4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [PREMATURE_MULTIPLES_X_SEVERITY3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [PREMATURE_MULTIPLES_X_SEVERITY2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [PREMATURE_MULTIPLES_X_SEVERITY1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TERM_X_SEVERITY5]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TERM_X_SEVERITY4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TERM_X_SEVERITY3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TERM_X_SEVERITY2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [TERM_X_SEVERITY1]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE1_X_SEVERITY5]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE1_X_SEVERITY4]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE1_X_SEVERITY3]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE1_X_SEVERITY2]
GO

ALTER TABLE [dbo].[hcc_list] ADD  DEFAULT ((0)) FOR [AGE1_X_SEVERITY1]
GO



IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Supplemental]') AND type in (N'U'))
DROP TABLE [dbo].[Supplemental]
GO

CREATE TABLE [dbo].[Supplemental](
	[RowNo] [int] IDENTITY(1,1) NOT NULL,
	[ClaimNumber] [varchar](50) NOT NULL,
	[EDGEClaimNumber] varchar(100) not null,
	[DX] [varchar](10) NOT NULL,
	[AddDeleteFlag] [varchar](1) NOT NULL,
	recordsource varchar(2) null,
	edgesupplementalidentifier varchar(100) null,
	RecordVendor varchar(100) null,
	[udf1] varchar(100) null,
	[udf2] varchar(100) null
 CONSTRAINT [PK_Supplemental] PRIMARY KEY CLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


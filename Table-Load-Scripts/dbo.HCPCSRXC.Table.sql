USE [riskadjustment]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('[dbo].[HCPCSRXC]') AND type in ('U'))
DROP TABLE [dbo].[HCPCSRXC]

CREATE TABLE [dbo].[HCPCSRXC](
	[HCPCS_CODE] [nvarchar](50) NOT NULL,
	[RXC] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1324','1')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3485','1')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9482','3')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0282','3')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1742','3')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1815','6')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1817','6')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0202','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1595','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1826','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1830','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J2350','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q3028','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0129','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0135','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0490','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0717','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1438','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1602','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1745','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3262','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3358','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3380','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5103','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5104','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J7639','10')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1160','3')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0881','4')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0885','4')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0887','4')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J2501','4')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1746','1')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J9302','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9077','1')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0741','1')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9086','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5121','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0491','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0283','3')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9149','7')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1961','1')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1814','6')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J9381','7')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J2329','8')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0889','4')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5132','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9166','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1748','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J2267','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3247','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3357','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5133','9')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES ('J0739','ACF_01')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES ('J0750','ACF_01')
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES ('J0751','ACF_01')

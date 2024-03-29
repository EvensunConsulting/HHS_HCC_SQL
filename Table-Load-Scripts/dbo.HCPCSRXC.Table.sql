USE [riskadjustment]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCPCSRXC]') AND type in (N'U'))
DROP TABLE [dbo].[HCPCSRXC]
GO
/****** Object:  Table [dbo].[HCPCSRXC]    Script Date: 8/28/2023 9:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCPCSRXC](
	[HCPCS_CODE] [nvarchar](50) NOT NULL,
	[RXC] [tinyint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1324', 1)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3485', 1)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9482', 3)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0282', 3)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1742', 3)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1815', 6)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1817', 6)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0202', 8)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1595', 8)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1826', 8)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1830', 8)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J2350', 8)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q3028', 8)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0129', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0135', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0490', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0717', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1438', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1602', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1745', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3262', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3358', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J3380', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5103', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5104', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J7639', 10)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J7682', 10)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1160', 3)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0881', 4)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0885', 4)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0887', 4)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J2501', 4)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J1746', 1)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J9302', 8)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9077', 1)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'J0741', 1)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'C9086', 9)
INSERT [dbo].[HCPCSRXC] ([HCPCS_CODE], [RXC]) VALUES (N'Q5121', 9)
GO

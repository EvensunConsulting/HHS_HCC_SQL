
USE [riskadjustment]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[metal_level_mapping]') AND type in (N'U'))
DROP TABLE [dbo].[metal_level_mapping]
/****** Object:  Table [dbo].[metal_level_mapping]    Script Date: 8/28/2023 9:04:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metal_level_mapping](
	[metal] [varchar](20) NULL,
	[idf] [decimal](10, 2) NULL,
	[av] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[metal_level_mapping] ([metal], [idf], [av]) VALUES (N'Bronze', CAST(1.00 AS Decimal(10, 2)), CAST(0.60 AS Decimal(10, 2)))
INSERT [dbo].[metal_level_mapping] ([metal], [idf], [av]) VALUES (N'Silver', CAST(1.03 AS Decimal(10, 2)), CAST(0.70 AS Decimal(10, 2)))
INSERT [dbo].[metal_level_mapping] ([metal], [idf], [av]) VALUES (N'Gold', CAST(1.08 AS Decimal(10, 2)), CAST(0.80 AS Decimal(10, 2)))
INSERT [dbo].[metal_level_mapping] ([metal], [idf], [av]) VALUES (N'Platinum', CAST(1.15 AS Decimal(10, 2)), CAST(0.90 AS Decimal(10, 2)))
INSERT [dbo].[metal_level_mapping] ([metal], [idf], [av]) VALUES (N'Catastrophic', CAST(1.00 AS Decimal(10, 2)), CAST(0.57 AS Decimal(10, 2)))
GO

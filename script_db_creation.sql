USE [master]
GO
/****** Object:  Database [TOUCH_BOX]    Script Date: 14/12/2016 19:06:53 ******/
CREATE DATABASE [TOUCH_BOX] 
GO
USE [TOUCH_BOX]
GO
/****** Object:  Table [dbo].[Audit]    Script Date: 14/12/2016 19:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit](
	[ID_question] [int] IDENTITY(1,1) NOT NULL,
	[_question] [nvarchar](200) NULL,
	[_answer] [nvarchar](200) NULL,
	[_lot] [nvarchar](50) NULL,
 CONSTRAINT [PK_Audit] PRIMARY KEY CLUSTERED 
(
	[ID_question] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lot]    Script Date: 14/12/2016 19:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lot](
	[ID_lot] [nvarchar](50) NOT NULL,
	[lot_description] [nvarchar](500) NULL,
	[lot_unit] [nvarchar](50) NULL,
	[lot_qty] [float] NULL,
	[lot_status] [nvarchar](10) NULL,
	[lot_product] [nvarchar](100) NULL,
 CONSTRAINT [PK_lot] PRIMARY KEY CLUSTERED 
(
	[ID_lot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lot_waste]    Script Date: 14/12/2016 19:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lot_waste](
	[ID_lot] [nvarchar](50) NOT NULL,
	[ID_terminal] [int] NOT NULL,
	[ID_color] [char](2) NOT NULL,
	[ID_waste_type] [int] NOT NULL,
	[date_reg] [varchar](10) NULL,
	[waste_qty] [int] NULL,
 CONSTRAINT [PK_lot_waste] PRIMARY KEY CLUSTERED 
(
	[ID_lot] ASC,
	[ID_terminal] ASC,
	[ID_color] ASC,
	[ID_waste_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[waste_type]    Script Date: 14/12/2016 19:06:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waste_type](
	[ID_waste_type] [int] IDENTITY(1,1) NOT NULL,
	[waste_type] [nvarchar](150) NULL,
	[waste_type_ita] [nvarchar](150) NULL,
 CONSTRAINT [PK_waste_type] PRIMARY KEY CLUSTERED 
(
	[ID_waste_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[lot] ([ID_lot], [lot_description], [lot_unit], [lot_qty], [lot_status], [lot_product]) VALUES (N'AS123', N'November 2016', N'paia', 35, N'A', N'Sun Glasses Black Sugar')
GO
INSERT [dbo].[lot] ([ID_lot], [lot_description], [lot_unit], [lot_qty], [lot_status], [lot_product]) VALUES (N'QR327', N'December 2016', N'paia', 500, N'A', N'Polarized 745')
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GB', 1, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GB', 2, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GB', 3, N'20161214', 2)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GB', 4, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GG', 1, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GG', 2, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GG', 3, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GG', 4, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GR', 1, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GR', 2, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GR', 3, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GR', 4, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GV', 1, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GV', 2, N'20161214', 0)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GV', 3, N'20161214', 2)
GO
INSERT [dbo].[lot_waste] ([ID_lot], [ID_terminal], [ID_color], [ID_waste_type], [date_reg], [waste_qty]) VALUES (N'AS123', 63, N'GV', 4, N'20161214', 0)
GO
SET IDENTITY_INSERT [dbo].[waste_type] ON 

GO
INSERT [dbo].[waste_type] ([ID_waste_type], [waste_type], [waste_type_ita]) VALUES (1, N'chipping', N'scheggiature')
GO
INSERT [dbo].[waste_type] ([ID_waste_type], [waste_type], [waste_type_ita]) VALUES (2, N'breakages', N'rotture')
GO
INSERT [dbo].[waste_type] ([ID_waste_type], [waste_type], [waste_type_ita]) VALUES (3, N'scratches', N'graffi')
GO
INSERT [dbo].[waste_type] ([ID_waste_type], [waste_type], [waste_type_ita]) VALUES (4, N'spots', N'macchie')
GO
SET IDENTITY_INSERT [dbo].[waste_type] OFF
GO
USE [master]
GO
ALTER DATABASE [TOUCH_BOX] SET  READ_WRITE 
GO

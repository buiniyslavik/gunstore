USE [Gunstore]
GO
/****** Object:  Table [dbo].[ГладкоствольноеОружие]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ГладкоствольноеОружие](
	[НомерЕдиницыГС] [int] IDENTITY(1,1) NOT NULL,
	[ОтпущеноПоЛицензииГС] [nvarchar](50) NULL,
	[СерийныйНомерГС] [nvarchar](50) NOT NULL,
	[Занято] [bit] NOT NULL,
 CONSTRAINT [PK_ГладкоствольноеОружие] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыГС] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ГСОружиеВЗаказах]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ГСОружиеВЗаказах](
	[НомерЕдиницыГС] [int] NOT NULL,
	[НомерЗаказа] [int] NOT NULL,
 CONSTRAINT [PK_ГСОружиеВЗаказах] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыГС] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказы]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказы](
	[НомерЗаказа] [int] IDENTITY(1,1) NOT NULL,
	[НомерКлиента] [int] NOT NULL,
	[ДатаСоздания] [date] NOT NULL,
	[СтатусЗаказа] [nvarchar](50) NOT NULL,
	[СуммаЗаказа] [money] NOT NULL,
 CONSTRAINT [PK_Заказы] PRIMARY KEY CLUSTERED 
(
	[НомерЗаказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[НомерКлиента] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [varchar](max) NOT NULL,
	[Телефон] [nchar](15) NOT NULL,
	[СуммаПокупок] [money] NOT NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[НомерКлиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[КлиентыВРозыске]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[КлиентыВРозыске](
	[НомерЗаписи] [int] IDENTITY(1,1) NOT NULL,
	[НомерКлиента] [int] NOT NULL,
 CONSTRAINT [PK_КлиентыВРозыске] PRIMARY KEY CLUSTERED 
(
	[НомерЗаписи] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ЛицензииГС]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ЛицензииГС](
	[НомерЛицензииГС] [nvarchar](50) NOT NULL,
	[ФиоГС] [nvarchar](max) NOT NULL,
	[ДатаВыдачиГС] [date] NOT NULL,
	[ДействительнаДоГС] [date] NOT NULL,
	[КемВыданаГс] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ЛицензииГС] PRIMARY KEY CLUSTERED 
(
	[НомерЛицензииГС] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ЛицензииНарезное]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ЛицензииНарезное](
	[НомерЛицензииНар] [nvarchar](50) NOT NULL,
	[ФиоНар] [nvarchar](max) NOT NULL,
	[ДатаВыдачиНар] [date] NOT NULL,
	[ДействительнаДоНар] [date] NOT NULL,
	[КемВыданаНар] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ЛицензииНарезное] PRIMARY KEY CLUSTERED 
(
	[НомерЛицензииНар] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ЛицензииОооп]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ЛицензииОооп](
	[НомерЛицензииОооп] [nvarchar](50) NOT NULL,
	[ФиоОооп] [nvarchar](max) NOT NULL,
	[ДатаВыдачиОооп] [date] NOT NULL,
	[ДействительнаДоОооп] [date] NOT NULL,
	[КемВыданаОооп] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ЛицензииОооп] PRIMARY KEY CLUSTERED 
(
	[НомерЛицензииОооп] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[НарезноеОружие]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[НарезноеОружие](
	[НомерЕдиницыНар] [int] IDENTITY(1,1) NOT NULL,
	[ОтпущеноПоЛицензииНар] [nvarchar](50) NULL,
	[СерийныйНомерНар] [nvarchar](50) NOT NULL,
	[Занято] [bit] NOT NULL,
 CONSTRAINT [PK_НарезноеОружие] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыНар] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[НарезноеОружиеВЗаказах]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[НарезноеОружиеВЗаказах](
	[НомерЕдиницыНар] [int] NOT NULL,
	[НомерЗаказа] [int] NOT NULL,
 CONSTRAINT [PK_НарезноеОружиеВЗаказах] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыНар] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Оооп]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Оооп](
	[НомерЕдиницыОооп] [int] IDENTITY(1,1) NOT NULL,
	[ОтпущеноПоЛицензииОооп] [nvarchar](50) NULL,
	[СерийныйНомерОооп] [nvarchar](50) NOT NULL,
	[Занято] [bit] NOT NULL,
 CONSTRAINT [PK_Оооп] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыОооп] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ОоопВЗаказах]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ОоопВЗаказах](
	[НомерЕдиницыОооп] [int] NOT NULL,
	[НомерЗаказа] [int] NOT NULL,
 CONSTRAINT [PK_ОоопВЗаказах] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыОооп] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Патроны]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Патроны](
	[НомерТипаПаторнов] [int] IDENTITY(1,1) NOT NULL,
	[Калибр] [nvarchar](50) NOT NULL,
	[ТипСнаряда] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Патроны] PRIMARY KEY CLUSTERED 
(
	[НомерТипаПаторнов] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разрешения]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разрешения](
	[НомерРазрешения] [nvarchar](50) NOT NULL,
	[НомерКлиента] [int] NOT NULL,
	[ФИОРазр] [varchar](max) NOT NULL,
	[КалибрРазр] [varchar](50) NOT NULL,
	[ДатаВыдачиРазр] [date] NOT NULL,
	[ДействительноДоРазр] [date] NOT NULL,
	[КемВыданоРазр] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Разрешения] PRIMARY KEY CLUSTERED 
(
	[НомерРазрешения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[СкидкиКлиентов]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[СкидкиКлиентов](
	[НомерКлиента] [int] NOT NULL,
	[ТипСкидки] [int] NOT NULL,
 CONSTRAINT [PK_СкидкиКлиентов] PRIMARY KEY CLUSTERED 
(
	[НомерКлиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипыЕдиницГС]    Script Date: 6/22/2020 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипыЕдиницГС](
	[НомерЕдиницыГС] [int] NOT NULL,
	[НомерТипаГС] [int] NOT NULL,
 CONSTRAINT [PK_ТипыЕдиницГС] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыГС] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипыЕдиницНарезное]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипыЕдиницНарезное](
	[НомерЕдиницыНар] [int] NOT NULL,
	[НомерТипаНар] [int] NOT NULL,
 CONSTRAINT [PK_ТипыЕдиницНарезное] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыНар] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипыЕдиницОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипыЕдиницОооп](
	[НомерЕдиницыОооп] [int] NOT NULL,
	[НомерТипаОооп] [int] NOT NULL,
 CONSTRAINT [PK_ТипыЕдиницОооп] PRIMARY KEY CLUSTERED 
(
	[НомерЕдиницыОооп] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Товары]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Товары](
	[Артикул] [int] IDENTITY(1,1) NOT NULL,
	[НомерТипаГС] [int] NULL,
	[НомерТипаПатронов] [int] NULL,
	[НомерТипаНар] [int] NULL,
	[НомерТипаОооп] [int] NULL,
	[Название] [nvarchar](50) NOT NULL,
	[Описание] [nvarchar](max) NULL,
	[Цена] [money] NOT NULL,
	[Остаток] [int] NOT NULL,
 CONSTRAINT [PK_Товары] PRIMARY KEY CLUSTERED 
(
	[Артикул] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТоварыВЗаказах]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТоварыВЗаказах](
	[НомерЗаказа] [int] NOT NULL,
	[Артикул] [int] NOT NULL,
	[Количество] [int] NOT NULL,
 CONSTRAINT [PK_ТоварыВЗаказах] PRIMARY KEY CLUSTERED 
(
	[НомерЗаказа] ASC,
	[Артикул] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[УровниСкидки]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[УровниСкидки](
	[НомерСкидки] [int] IDENTITY(1,1) NOT NULL,
	[НазваниеСкидки] [varchar](50) NOT NULL,
	[КоэфСкидки] [float] NOT NULL,
 CONSTRAINT [PK_УровниСкидки] PRIMARY KEY CLUSTERED 
(
	[НомерСкидки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ХарактеристикиГС]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ХарактеристикиГС](
	[НомерТипаГС] [int] IDENTITY(1,1) NOT NULL,
	[КалибрГс] [nvarchar](50) NOT NULL,
	[ДлинаСтволаГс] [int] NOT NULL,
	[ЕмкостьМагазинаГс] [int] NULL,
	[СистемаАвтоматикиГс] [nvarchar](50) NULL,
	[ДульныеСуженияГс] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ХарактеристикиГС] PRIMARY KEY CLUSTERED 
(
	[НомерТипаГС] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ХарактеристикиНарезное]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ХарактеристикиНарезное](
	[НомерТипаНар] [int] IDENTITY(1,1) NOT NULL,
	[КалибрНар] [nvarchar](50) NOT NULL,
	[ДлинаСтволаНар] [int] NOT NULL,
	[ЕмкостьМагазинаНар] [int] NULL,
	[СистемаАвтоматикиНар] [nvarchar](50) NULL,
	[ШагНарезовНар] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ХарактеристикиНарезное] PRIMARY KEY CLUSTERED 
(
	[НомерТипаНар] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ХарактеристикиОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ХарактеристикиОооп](
	[НомерТипаОооп] [int] IDENTITY(1,1) NOT NULL,
	[КалибрОооп] [nvarchar](50) NOT NULL,
	[ДлинаСтволаОооп] [int] NOT NULL,
	[ЕмкостьМагазинаОооп] [int] NULL,
	[СистемаАвтоматикиОооп] [nvarchar](50) NULL,
 CONSTRAINT [PK_ХарактеристикиОооп] PRIMARY KEY CLUSTERED 
(
	[НомерТипаОооп] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ЧерныйСписок]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ЧерныйСписок](
	[НомерЗаписи] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ЧерныйСписок] PRIMARY KEY CLUSTERED 
(
	[НомерЗаписи] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ГладкоствольноеОружие] ON 

INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (4, N'ЛГа 828331', N'854123', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (8, N'ЛГа 345345', N'A1231231', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (9, N'ЛГа 789789', N'A1231232', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (10, N'ЛГа 222222', N'A1231233', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (11, N'ЛГа 858324', N'B4412687', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (12, NULL, N'B4412688', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (13, NULL, N'B4412689', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (14, NULL, N'B4412561', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (15, NULL, N'B4412111', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (16, NULL, N'B4412112', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (17, NULL, N'B4412117', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (18, NULL, N'B4412114', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (19, NULL, N'B4412122', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (20, NULL, N'B4412123', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (21, NULL, N'AC555432', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (22, NULL, N'AC555433', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (23, NULL, N'123870', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (24, NULL, N'123871', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (25, NULL, N'123872', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (26, NULL, N'123873', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (27, NULL, N'123874', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (28, NULL, N'123875', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (29, NULL, N'123876', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (30, NULL, N'123877', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (31, NULL, N'123878', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (32, NULL, N'123879', 0)
INSERT [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС], [ОтпущеноПоЛицензииГС], [СерийныйНомерГС], [Занято]) VALUES (33, NULL, N'123880', 0)
SET IDENTITY_INSERT [dbo].[ГладкоствольноеОружие] OFF
INSERT [dbo].[ГСОружиеВЗаказах] ([НомерЕдиницыГС], [НомерЗаказа]) VALUES (4, 24)
INSERT [dbo].[ГСОружиеВЗаказах] ([НомерЕдиницыГС], [НомерЗаказа]) VALUES (8, 21)
INSERT [dbo].[ГСОружиеВЗаказах] ([НомерЕдиницыГС], [НомерЗаказа]) VALUES (9, 31)
INSERT [dbo].[ГСОружиеВЗаказах] ([НомерЕдиницыГС], [НомерЗаказа]) VALUES (10, 34)
INSERT [dbo].[ГСОружиеВЗаказах] ([НомерЕдиницыГС], [НомерЗаказа]) VALUES (11, 36)
SET IDENTITY_INSERT [dbo].[Заказы] ON 

INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (21, 4, CAST(N'2020-06-08' AS Date), N'Завершен', 35000.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (24, 5, CAST(N'2020-06-14' AS Date), N'Завершен', 48390.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (25, 3, CAST(N'2020-06-14' AS Date), N'Завершен', 61540.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (28, 7, CAST(N'2020-06-20' AS Date), N'Завершен', 17990.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (29, 9, CAST(N'2020-06-21' AS Date), N'Завершен', 150.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (31, 10, CAST(N'2020-06-21' AS Date), N'Завершен', 76490.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (33, 3, CAST(N'2020-06-21' AS Date), N'Создан', 0.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (34, 12, CAST(N'2020-06-21' AS Date), N'Завершен', 204510.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (35, 3, CAST(N'2020-06-21' AS Date), N'Создан', 0.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (36, 13, CAST(N'2020-06-21' AS Date), N'Завершен', 100730.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (37, 9, CAST(N'2020-06-21' AS Date), N'Завершен', 20000.0000)
INSERT [dbo].[Заказы] ([НомерЗаказа], [НомерКлиента], [ДатаСоздания], [СтатусЗаказа], [СуммаЗаказа]) VALUES (39, 14, CAST(N'2020-06-22' AS Date), N'Создан', 103980.0000)
SET IDENTITY_INSERT [dbo].[Заказы] OFF
SET IDENTITY_INSERT [dbo].[Клиенты] ON 

INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (3, N'Pupkin Vasya', N'811111111      ', 123080.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (4, N'Пупкин Василий Иванович', N'81123123123    ', 70000.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (5, N'Семён Семёныч', N'+7495228282    ', 96780.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (6, N'Джеки Чан', N'+33123456789   ', 0.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (7, N'Карл Джонсон', N'4124124124124  ', 35980.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (8, N'Биг Смоук', N'bix nood       ', 0.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (9, N'Рэмбо Комнатный', N'132654979      ', 40150.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (10, N'Иван Иванов', N'12345          ', 152980.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (11, N'Петров Александр Иванович', N'123456789      ', 0.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (12, N'Петров Пётр Петрович', N'+712345679     ', 409020.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (13, N'Клиент Клиентович', N'123456489      ', 201460.0000)
INSERT [dbo].[Клиенты] ([НомерКлиента], [ФИО], [Телефон], [СуммаПокупок]) VALUES (14, N'Иванов Клиент', N'+79531231215   ', 0.0000)
SET IDENTITY_INSERT [dbo].[Клиенты] OFF
INSERT [dbo].[ЛицензииГС] ([НомерЛицензииГС], [ФиоГС], [ДатаВыдачиГС], [ДействительнаДоГС], [КемВыданаГс]) VALUES (N'ЛГа 222222', N'йцуйцу', CAST(N'2020-01-02' AS Date), CAST(N'2020-06-02' AS Date), N'ЦЛРР')
INSERT [dbo].[ЛицензииГС] ([НомерЛицензииГС], [ФиоГС], [ДатаВыдачиГС], [ДействительнаДоГС], [КемВыданаГс]) VALUES (N'ЛГа 345345', N'Пупкин Василий Иванович', CAST(N'2019-08-01' AS Date), CAST(N'2020-04-01' AS Date), N'йцуйцуйцу')
INSERT [dbo].[ЛицензииГС] ([НомерЛицензииГС], [ФиоГС], [ДатаВыдачиГС], [ДействительнаДоГС], [КемВыданаГс]) VALUES (N'ЛГа 789789', N'Иван Иванов', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-07' AS Date), N'Рязанский ЦЛРР')
INSERT [dbo].[ЛицензииГС] ([НомерЛицензииГС], [ФиоГС], [ДатаВыдачиГС], [ДействительнаДоГС], [КемВыданаГс]) VALUES (N'ЛГа 828331', N'Говнов Семён Аристархович', CAST(N'2020-03-01' AS Date), CAST(N'2020-09-01' AS Date), N'йцйцуцйу')
INSERT [dbo].[ЛицензииГС] ([НомерЛицензииГС], [ФиоГС], [ДатаВыдачиГС], [ДействительнаДоГС], [КемВыданаГс]) VALUES (N'ЛГа 858324', N'К К', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-01' AS Date), N'гщпафыафаав')
INSERT [dbo].[ЛицензииГС] ([НомерЛицензииГС], [ФиоГС], [ДатаВыдачиГС], [ДействительнаДоГС], [КемВыданаГс]) VALUES (N'ЛГа 9876541', N'Пупкин Василий Иванович', CAST(N'2020-02-02' AS Date), CAST(N'2020-02-08' AS Date), N'ЦЛРР Росгвардии по г. Мухосранск')
INSERT [dbo].[ЛицензииНарезное] ([НомерЛицензииНар], [ФиоНар], [ДатаВыдачиНар], [ДействительнаДоНар], [КемВыданаНар]) VALUES (N'ЛНа 123123', N'Джонсон Карл', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-01' AS Date), N'ЦЛРР Сан-Андреас')
INSERT [dbo].[ЛицензииНарезное] ([НомерЛицензииНар], [ФиоНар], [ДатаВыдачиНар], [ДействительнаДоНар], [КемВыданаНар]) VALUES (N'ЛНа 434343', N'Клиент Клиентович', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-01' AS Date), N'ываываываыва')
INSERT [dbo].[ЛицензииНарезное] ([НомерЛицензииНар], [ФиоНар], [ДатаВыдачиНар], [ДействительнаДоНар], [КемВыданаНар]) VALUES (N'ЛНа 444777', N'Иванов Иван', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-07' AS Date), N'Рязанский ЦЛРР')
INSERT [dbo].[ЛицензииНарезное] ([НомерЛицензииНар], [ФиоНар], [ДатаВыдачиНар], [ДействительнаДоНар], [КемВыданаНар]) VALUES (N'ЛНа 6161611', N'фыафыаф', CAST(N'2020-01-01' AS Date), CAST(N'2020-06-01' AS Date), N'выфавфыа')
INSERT [dbo].[ЛицензииОооп] ([НомерЛицензииОооп], [ФиоОооп], [ДатаВыдачиОооп], [ДействительнаДоОооп], [КемВыданаОооп]) VALUES (N'ЛОПа 228228', N'йцувщйцвтщ', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-07' AS Date), N'фывавыа')
INSERT [dbo].[ЛицензииОооп] ([НомерЛицензииОооп], [ФиоОооп], [ДатаВыдачиОооп], [ДействительнаДоОооп], [КемВыданаОооп]) VALUES (N'ЛОПа 228229', N'ыфвфывошщ', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-07' AS Date), N'ывпывпывпывп')
INSERT [dbo].[ЛицензииОооп] ([НомерЛицензииОооп], [ФиоОооп], [ДатаВыдачиОооп], [ДействительнаДоОооп], [КемВыданаОооп]) VALUES (N'ЛОПа 228282', N'Пупкин Василий Иванович', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-01' AS Date), N'ЦЛРР Росгвардии пос. Мухосранск')
INSERT [dbo].[ЛицензииОооп] ([НомерЛицензииОооп], [ФиоОооп], [ДатаВыдачиОооп], [ДействительнаДоОооп], [КемВыданаОооп]) VALUES (N'ЛОПа 232323', N'фыафыаа', CAST(N'2020-01-01' AS Date), CAST(N'2020-06-01' AS Date), N'фыафыафыа')
INSERT [dbo].[ЛицензииОооп] ([НомерЛицензииОооп], [ФиоОооп], [ДатаВыдачиОооп], [ДействительнаДоОооп], [КемВыданаОооп]) VALUES (N'ЛОПа 464565', N'Иванов Иван', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-07' AS Date), N'Рязанский ЦЛРР')
INSERT [dbo].[ЛицензииОооп] ([НомерЛицензииОооп], [ФиоОооп], [ДатаВыдачиОооп], [ДействительнаДоОооп], [КемВыданаОооп]) VALUES (N'ЛОПа 656563', N'Клиент Клиентович', CAST(N'2020-01-01' AS Date), CAST(N'2020-07-01' AS Date), N'фыващоащфа')
SET IDENTITY_INSERT [dbo].[НарезноеОружие] ON 

INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (1, N'ЛНа 123123', N'A1111', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (2, N'ЛНа 444777', N'A1112', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (3, N'ЛНа 6161611', N'10325', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (4, N'ЛНа 434343', N'AD3200', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (5, NULL, N'AD3201', 1)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (6, NULL, N'AD3202', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (7, NULL, N'AD3203', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (8, NULL, N'AD3204', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (9, NULL, N'AD3205', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (10, NULL, N'AD3206', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (11, NULL, N'AD3207', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (12, NULL, N'AD3208', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (13, NULL, N'AD3209', 0)
INSERT [dbo].[НарезноеОружие] ([НомерЕдиницыНар], [ОтпущеноПоЛицензииНар], [СерийныйНомерНар], [Занято]) VALUES (14, NULL, N'AD3210', 0)
SET IDENTITY_INSERT [dbo].[НарезноеОружие] OFF
INSERT [dbo].[НарезноеОружиеВЗаказах] ([НомерЕдиницыНар], [НомерЗаказа]) VALUES (1, 28)
INSERT [dbo].[НарезноеОружиеВЗаказах] ([НомерЕдиницыНар], [НомерЗаказа]) VALUES (2, 31)
INSERT [dbo].[НарезноеОружиеВЗаказах] ([НомерЕдиницыНар], [НомерЗаказа]) VALUES (3, 34)
INSERT [dbo].[НарезноеОружиеВЗаказах] ([НомерЕдиницыНар], [НомерЗаказа]) VALUES (4, 36)
SET IDENTITY_INSERT [dbo].[Оооп] ON 

INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (1, N'ЛОПа 228228', N'АА123123', 1)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (2, N'ЛОПа 464565', N'210', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (3, N'ЛОПа 232323', N'211', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (4, N'ЛОПа 656563', N'212', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (5, N'ЛОПа 228229', N'213', 1)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (6, NULL, N'214', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (7, NULL, N'215', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (8, NULL, N'АА123124', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (9, NULL, N'АА123125', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (10, NULL, N'АА123126', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (11, NULL, N'АА123127', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (12, NULL, N'AA123124', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (13, NULL, N'AA123125', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (14, NULL, N'AA123126', 0)
INSERT [dbo].[Оооп] ([НомерЕдиницыОооп], [ОтпущеноПоЛицензииОооп], [СерийныйНомерОооп], [Занято]) VALUES (15, NULL, N'AA123127', 0)
SET IDENTITY_INSERT [dbo].[Оооп] OFF
INSERT [dbo].[ОоопВЗаказах] ([НомерЕдиницыОооп], [НомерЗаказа]) VALUES (1, 37)
INSERT [dbo].[ОоопВЗаказах] ([НомерЕдиницыОооп], [НомерЗаказа]) VALUES (2, 31)
INSERT [dbo].[ОоопВЗаказах] ([НомерЕдиницыОооп], [НомерЗаказа]) VALUES (3, 34)
INSERT [dbo].[ОоопВЗаказах] ([НомерЕдиницыОооп], [НомерЗаказа]) VALUES (4, 36)
INSERT [dbo].[ОоопВЗаказах] ([НомерЕдиницыОооп], [НомерЗаказа]) VALUES (5, 37)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (4, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (8, 2)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (9, 2)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (10, 2)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (11, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (12, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (13, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (14, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (15, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (16, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (17, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (18, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (19, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (20, 1)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (21, 2)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (22, 2)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (23, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (24, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (25, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (26, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (27, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (28, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (29, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (30, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (31, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (32, 3)
INSERT [dbo].[ТипыЕдиницГС] ([НомерЕдиницыГС], [НомерТипаГС]) VALUES (33, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (1, 1)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (2, 1)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (3, 2)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (4, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (5, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (6, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (7, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (8, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (9, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (10, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (11, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (12, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (13, 3)
INSERT [dbo].[ТипыЕдиницНарезное] ([НомерЕдиницыНар], [НомерТипаНар]) VALUES (14, 3)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (1, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (2, 2)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (3, 2)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (4, 2)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (5, 2)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (6, 2)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (7, 2)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (8, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (9, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (10, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (11, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (12, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (13, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (14, 1)
INSERT [dbo].[ТипыЕдиницОооп] ([НомерЕдиницыОооп], [НомерТипаОооп]) VALUES (15, 1)
SET IDENTITY_INSERT [dbo].[Товары] ON 

INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (1, 1, NULL, NULL, NULL, N'Stoeger M3K FE', N'Спортивное ружьё 12 калибра с увеличенным магазином', 48000.0000, 10)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (2, 2, NULL, NULL, NULL, N'Remington 870 Express Magnum', N'Помповый дробовик', 35000.0000, 5)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (3, NULL, NULL, NULL, NULL, N'Ballistol (50 мл)', N'Универсальное масло "Баллистол" в баллончике.', 150.0000, 95)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (4, NULL, NULL, NULL, NULL, N'Пули "Квинтор" 4.5мм 150 шт.', N'Пули для пневматических винтовок.', 120.0000, 54)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (5, NULL, NULL, 1, NULL, N'Карабин ОП-СКС', N'Самозарядный охотничий карабин на базе армейской винтовки СКС.', 17990.0000, 18)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (6, NULL, NULL, NULL, 1, N'Пистолет Grand Power T12', N'Знаменитый травматический пистолет под мощный патрон 10x28T. Основан на боевом пистолете GP K100.', 49000.0000, 5)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (7, NULL, NULL, NULL, NULL, N'Винтовка пневматическая Stoeger X20', N'Пневматическая винтовка калибра 4.5 мм.', 12000.0000, 30)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (8, NULL, NULL, NULL, NULL, N'Нож "Тайга"', N'Охотничий нож из стали AVS-8.', 3200.0000, 9)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (9, 3, NULL, NULL, NULL, N'ВПО-209Л', N'Гладкоствольный охотничий карабин на базе АКМ. Отличный выбор для тех, кто хочет "Калашникова", но не имеет стажа для покупки нарезного оружия.', 32990.0000, 8)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (10, NULL, NULL, 2, NULL, N'John Rigby London Best', N'Винтажная крупнокалиберная винтовка для сафари от элитного бренда John Rigby & Co.', 3950000.0000, 1)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (11, NULL, NULL, 3, NULL, N'ADAR-15 .223', N'Российская версия всемирно знаменитой винтовки AR-15 - прародителя M16. Идеальна для спортивной стрельбы.', 120000.0000, 9)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (12, NULL, NULL, NULL, 2, N'ИЖ-79-9Т', N'Травматический пистолет на базе ПМ.', 10000.0000, 2)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (13, NULL, NULL, NULL, NULL, N'Шомпол 12к', N'Шомпол для ружей', 500.0000, 19)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (14, NULL, NULL, NULL, NULL, N'Шомпол 16к', N'Шомпол для ружей 16 калибра', 500.0000, 50)
INSERT [dbo].[Товары] ([Артикул], [НомерТипаГС], [НомерТипаПатронов], [НомерТипаНар], [НомерТипаОооп], [Название], [Описание], [Цена], [Остаток]) VALUES (15, NULL, NULL, NULL, NULL, N'Баллончик перцовый Факел-2 75мл', N'Баллончик со смесью экстракта жгучего перца и слезоточивого газа, тип распыления - аэрозольный.
Отличный выбор для самообороны вне помещений.', 600.0000, 100)
SET IDENTITY_INSERT [dbo].[Товары] OFF
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (24, 1, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (25, 7, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (31, 1, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (31, 12, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (34, 11, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (36, 9, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (37, 12, 2)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (39, 3, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (39, 5, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (39, 6, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (39, 8, 1)
INSERT [dbo].[ТоварыВЗаказах] ([НомерЗаказа], [Артикул], [Количество]) VALUES (39, 9, 1)
SET IDENTITY_INSERT [dbo].[ХарактеристикиГС] ON 

INSERT [dbo].[ХарактеристикиГС] ([НомерТипаГС], [КалибрГс], [ДлинаСтволаГс], [ЕмкостьМагазинаГс], [СистемаАвтоматикиГс], [ДульныеСуженияГс]) VALUES (1, N'12/76', 610, 10, N'Инерционная', N'Получок, ЦСН, цилиндр')
INSERT [dbo].[ХарактеристикиГС] ([НомерТипаГС], [КалибрГс], [ДлинаСтволаГс], [ЕмкостьМагазинаГс], [СистемаАвтоматикиГс], [ДульныеСуженияГс]) VALUES (2, N'12/76', 580, 4, N'Ручная перезарядка', N'цилиндр')
INSERT [dbo].[ХарактеристикиГС] ([НомерТипаГС], [КалибрГс], [ДлинаСтволаГс], [ЕмкостьМагазинаГс], [СистемаАвтоматикиГс], [ДульныеСуженияГс]) VALUES (3, N'.366ТКМ', 510, 10, N'газоотвод', N'отсутствуют')
SET IDENTITY_INSERT [dbo].[ХарактеристикиГС] OFF
SET IDENTITY_INSERT [dbo].[ХарактеристикиНарезное] ON 

INSERT [dbo].[ХарактеристикиНарезное] ([НомерТипаНар], [КалибрНар], [ДлинаСтволаНар], [ЕмкостьМагазинаНар], [СистемаАвтоматикиНар], [ШагНарезовНар]) VALUES (1, N'7.62x39', 520, 10, N'Газоотводная, короткий ход поршня', N'240')
INSERT [dbo].[ХарактеристикиНарезное] ([НомерТипаНар], [КалибрНар], [ДлинаСтволаНар], [ЕмкостьМагазинаНар], [СистемаАвтоматикиНар], [ШагНарезовНар]) VALUES (2, N'.416 Rigby', 640, 1, N'Продольно-скользящий затвор', N'-1')
INSERT [dbo].[ХарактеристикиНарезное] ([НомерТипаНар], [КалибрНар], [ДлинаСтволаНар], [ЕмкостьМагазинаНар], [СистемаАвтоматикиНар], [ШагНарезовНар]) VALUES (3, N'.223 Rem', 510, 10, N'Газоотвод (б/поршневый)', N'-1')
SET IDENTITY_INSERT [dbo].[ХарактеристикиНарезное] OFF
SET IDENTITY_INSERT [dbo].[ХарактеристикиОооп] ON 

INSERT [dbo].[ХарактеристикиОооп] ([НомерТипаОооп], [КалибрОооп], [ДлинаСтволаОооп], [ЕмкостьМагазинаОооп], [СистемаАвтоматикиОооп]) VALUES (1, N'10x28T', 100, 10, N'Отдача ствола при коротком ходе')
INSERT [dbo].[ХарактеристикиОооп] ([НомерТипаОооп], [КалибрОооп], [ДлинаСтволаОооп], [ЕмкостьМагазинаОооп], [СистемаАвтоматикиОооп]) VALUES (2, N'9mm PA', 93, 8, N'Свободный затвор')
SET IDENTITY_INSERT [dbo].[ХарактеристикиОооп] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Клиенты]    Script Date: 6/22/2020 8:58:04 PM ******/
ALTER TABLE [dbo].[Клиенты] ADD  CONSTRAINT [IX_Клиенты] UNIQUE NONCLUSTERED 
(
	[Телефон] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ГладкоствольноеОружие] ADD  CONSTRAINT [DF_ГладкоствольноеОружие_Занято]  DEFAULT ((0)) FOR [Занято]
GO
ALTER TABLE [dbo].[Заказы] ADD  CONSTRAINT [DF_Заказы_СтатусЗаказа]  DEFAULT (N'Создан') FOR [СтатусЗаказа]
GO
ALTER TABLE [dbo].[Заказы] ADD  CONSTRAINT [DF_Заказы_СуммаЗаказа]  DEFAULT ((0)) FOR [СуммаЗаказа]
GO
ALTER TABLE [dbo].[НарезноеОружие] ADD  CONSTRAINT [DF_НарезноеОружие_Занято]  DEFAULT ((0)) FOR [Занято]
GO
ALTER TABLE [dbo].[Оооп] ADD  CONSTRAINT [DF_Оооп_Занято]  DEFAULT ((0)) FOR [Занято]
GO
ALTER TABLE [dbo].[ГладкоствольноеОружие]  WITH CHECK ADD  CONSTRAINT [FK_ГладкоствольноеОружие_ЛицензииГС] FOREIGN KEY([ОтпущеноПоЛицензииГС])
REFERENCES [dbo].[ЛицензииГС] ([НомерЛицензииГС])
GO
ALTER TABLE [dbo].[ГладкоствольноеОружие] CHECK CONSTRAINT [FK_ГладкоствольноеОружие_ЛицензииГС]
GO
ALTER TABLE [dbo].[ГСОружиеВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_ГСОружиеВЗаказах_ГладкоствольноеОружие] FOREIGN KEY([НомерЕдиницыГС])
REFERENCES [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС])
GO
ALTER TABLE [dbo].[ГСОружиеВЗаказах] CHECK CONSTRAINT [FK_ГСОружиеВЗаказах_ГладкоствольноеОружие]
GO
ALTER TABLE [dbo].[ГСОружиеВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_ГСОружиеВЗаказах_Заказы] FOREIGN KEY([НомерЗаказа])
REFERENCES [dbo].[Заказы] ([НомерЗаказа])
GO
ALTER TABLE [dbo].[ГСОружиеВЗаказах] CHECK CONSTRAINT [FK_ГСОружиеВЗаказах_Заказы]
GO
ALTER TABLE [dbo].[Заказы]  WITH CHECK ADD  CONSTRAINT [FK_Заказы_Клиенты] FOREIGN KEY([НомерКлиента])
REFERENCES [dbo].[Клиенты] ([НомерКлиента])
GO
ALTER TABLE [dbo].[Заказы] CHECK CONSTRAINT [FK_Заказы_Клиенты]
GO
ALTER TABLE [dbo].[КлиентыВРозыске]  WITH CHECK ADD  CONSTRAINT [FK_КлиентыВРозыске_Клиенты] FOREIGN KEY([НомерКлиента])
REFERENCES [dbo].[Клиенты] ([НомерКлиента])
GO
ALTER TABLE [dbo].[КлиентыВРозыске] CHECK CONSTRAINT [FK_КлиентыВРозыске_Клиенты]
GO
ALTER TABLE [dbo].[НарезноеОружие]  WITH CHECK ADD  CONSTRAINT [FK_НарезноеОружие_ЛицензииНарезное] FOREIGN KEY([ОтпущеноПоЛицензииНар])
REFERENCES [dbo].[ЛицензииНарезное] ([НомерЛицензииНар])
GO
ALTER TABLE [dbo].[НарезноеОружие] CHECK CONSTRAINT [FK_НарезноеОружие_ЛицензииНарезное]
GO
ALTER TABLE [dbo].[НарезноеОружиеВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_НарезноеОружиеВЗаказах_Заказы] FOREIGN KEY([НомерЗаказа])
REFERENCES [dbo].[Заказы] ([НомерЗаказа])
GO
ALTER TABLE [dbo].[НарезноеОружиеВЗаказах] CHECK CONSTRAINT [FK_НарезноеОружиеВЗаказах_Заказы]
GO
ALTER TABLE [dbo].[НарезноеОружиеВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_НарезноеОружиеВЗаказах_НарезноеОружие] FOREIGN KEY([НомерЕдиницыНар])
REFERENCES [dbo].[НарезноеОружие] ([НомерЕдиницыНар])
GO
ALTER TABLE [dbo].[НарезноеОружиеВЗаказах] CHECK CONSTRAINT [FK_НарезноеОружиеВЗаказах_НарезноеОружие]
GO
ALTER TABLE [dbo].[Оооп]  WITH CHECK ADD  CONSTRAINT [FK_Оооп_ЛицензииОооп] FOREIGN KEY([ОтпущеноПоЛицензииОооп])
REFERENCES [dbo].[ЛицензииОооп] ([НомерЛицензииОооп])
GO
ALTER TABLE [dbo].[Оооп] CHECK CONSTRAINT [FK_Оооп_ЛицензииОооп]
GO
ALTER TABLE [dbo].[ОоопВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_ОоопВЗаказах_Заказы] FOREIGN KEY([НомерЗаказа])
REFERENCES [dbo].[Заказы] ([НомерЗаказа])
GO
ALTER TABLE [dbo].[ОоопВЗаказах] CHECK CONSTRAINT [FK_ОоопВЗаказах_Заказы]
GO
ALTER TABLE [dbo].[ОоопВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_ОоопВЗаказах_Оооп] FOREIGN KEY([НомерЕдиницыОооп])
REFERENCES [dbo].[Оооп] ([НомерЕдиницыОооп])
GO
ALTER TABLE [dbo].[ОоопВЗаказах] CHECK CONSTRAINT [FK_ОоопВЗаказах_Оооп]
GO
ALTER TABLE [dbo].[Разрешения]  WITH CHECK ADD  CONSTRAINT [FK_Разрешения_Клиенты] FOREIGN KEY([НомерКлиента])
REFERENCES [dbo].[Клиенты] ([НомерКлиента])
GO
ALTER TABLE [dbo].[Разрешения] CHECK CONSTRAINT [FK_Разрешения_Клиенты]
GO
ALTER TABLE [dbo].[СкидкиКлиентов]  WITH CHECK ADD  CONSTRAINT [FK_СкидкиКлиентов_Клиенты] FOREIGN KEY([НомерКлиента])
REFERENCES [dbo].[Клиенты] ([НомерКлиента])
GO
ALTER TABLE [dbo].[СкидкиКлиентов] CHECK CONSTRAINT [FK_СкидкиКлиентов_Клиенты]
GO
ALTER TABLE [dbo].[СкидкиКлиентов]  WITH CHECK ADD  CONSTRAINT [FK_СкидкиКлиентов_УровниСкидки] FOREIGN KEY([ТипСкидки])
REFERENCES [dbo].[УровниСкидки] ([НомерСкидки])
GO
ALTER TABLE [dbo].[СкидкиКлиентов] CHECK CONSTRAINT [FK_СкидкиКлиентов_УровниСкидки]
GO
ALTER TABLE [dbo].[ТипыЕдиницГС]  WITH CHECK ADD  CONSTRAINT [FK_ТипыЕдиницГС_ГладкоствольноеОружие] FOREIGN KEY([НомерЕдиницыГС])
REFERENCES [dbo].[ГладкоствольноеОружие] ([НомерЕдиницыГС])
GO
ALTER TABLE [dbo].[ТипыЕдиницГС] CHECK CONSTRAINT [FK_ТипыЕдиницГС_ГладкоствольноеОружие]
GO
ALTER TABLE [dbo].[ТипыЕдиницГС]  WITH CHECK ADD  CONSTRAINT [FK_ТипыЕдиницГС_ХарактеристикиГС] FOREIGN KEY([НомерТипаГС])
REFERENCES [dbo].[ХарактеристикиГС] ([НомерТипаГС])
GO
ALTER TABLE [dbo].[ТипыЕдиницГС] CHECK CONSTRAINT [FK_ТипыЕдиницГС_ХарактеристикиГС]
GO
ALTER TABLE [dbo].[ТипыЕдиницНарезное]  WITH CHECK ADD  CONSTRAINT [FK_ТипыЕдиницНарезное_НарезноеОружие] FOREIGN KEY([НомерЕдиницыНар])
REFERENCES [dbo].[НарезноеОружие] ([НомерЕдиницыНар])
GO
ALTER TABLE [dbo].[ТипыЕдиницНарезное] CHECK CONSTRAINT [FK_ТипыЕдиницНарезное_НарезноеОружие]
GO
ALTER TABLE [dbo].[ТипыЕдиницНарезное]  WITH CHECK ADD  CONSTRAINT [FK_ТипыЕдиницНарезное_ХарактеристикиНарезное] FOREIGN KEY([НомерТипаНар])
REFERENCES [dbo].[ХарактеристикиНарезное] ([НомерТипаНар])
GO
ALTER TABLE [dbo].[ТипыЕдиницНарезное] CHECK CONSTRAINT [FK_ТипыЕдиницНарезное_ХарактеристикиНарезное]
GO
ALTER TABLE [dbo].[ТипыЕдиницОооп]  WITH CHECK ADD  CONSTRAINT [FK_ТипыЕдиницОооп_Оооп] FOREIGN KEY([НомерЕдиницыОооп])
REFERENCES [dbo].[Оооп] ([НомерЕдиницыОооп])
GO
ALTER TABLE [dbo].[ТипыЕдиницОооп] CHECK CONSTRAINT [FK_ТипыЕдиницОооп_Оооп]
GO
ALTER TABLE [dbo].[ТипыЕдиницОооп]  WITH CHECK ADD  CONSTRAINT [FK_ТипыЕдиницОооп_ХарактеристикиОооп] FOREIGN KEY([НомерТипаОооп])
REFERENCES [dbo].[ХарактеристикиОооп] ([НомерТипаОооп])
GO
ALTER TABLE [dbo].[ТипыЕдиницОооп] CHECK CONSTRAINT [FK_ТипыЕдиницОооп_ХарактеристикиОооп]
GO
ALTER TABLE [dbo].[Товары]  WITH CHECK ADD  CONSTRAINT [FK_Товары_Патроны] FOREIGN KEY([НомерТипаПатронов])
REFERENCES [dbo].[Патроны] ([НомерТипаПаторнов])
GO
ALTER TABLE [dbo].[Товары] CHECK CONSTRAINT [FK_Товары_Патроны]
GO
ALTER TABLE [dbo].[Товары]  WITH CHECK ADD  CONSTRAINT [FK_Товары_ХарактеристикиГС] FOREIGN KEY([НомерТипаГС])
REFERENCES [dbo].[ХарактеристикиГС] ([НомерТипаГС])
GO
ALTER TABLE [dbo].[Товары] CHECK CONSTRAINT [FK_Товары_ХарактеристикиГС]
GO
ALTER TABLE [dbo].[Товары]  WITH CHECK ADD  CONSTRAINT [FK_Товары_ХарактеристикиНарезное] FOREIGN KEY([НомерТипаНар])
REFERENCES [dbo].[ХарактеристикиНарезное] ([НомерТипаНар])
GO
ALTER TABLE [dbo].[Товары] CHECK CONSTRAINT [FK_Товары_ХарактеристикиНарезное]
GO
ALTER TABLE [dbo].[Товары]  WITH CHECK ADD  CONSTRAINT [FK_Товары_ХарактеристикиОооп] FOREIGN KEY([НомерТипаОооп])
REFERENCES [dbo].[ХарактеристикиОооп] ([НомерТипаОооп])
GO
ALTER TABLE [dbo].[Товары] CHECK CONSTRAINT [FK_Товары_ХарактеристикиОооп]
GO
ALTER TABLE [dbo].[ТоварыВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_ТоварыВЗаказах_Заказы] FOREIGN KEY([НомерЗаказа])
REFERENCES [dbo].[Заказы] ([НомерЗаказа])
GO
ALTER TABLE [dbo].[ТоварыВЗаказах] CHECK CONSTRAINT [FK_ТоварыВЗаказах_Заказы]
GO
ALTER TABLE [dbo].[ТоварыВЗаказах]  WITH CHECK ADD  CONSTRAINT [FK_ТоварыВЗаказах_Товары] FOREIGN KEY([Артикул])
REFERENCES [dbo].[Товары] ([Артикул])
GO
ALTER TABLE [dbo].[ТоварыВЗаказах] CHECK CONSTRAINT [FK_ТоварыВЗаказах_Товары]
GO
ALTER TABLE [dbo].[ЧерныйСписок]  WITH CHECK ADD  CONSTRAINT [FK_ЧерныйСписок_КлиентыВРозыске] FOREIGN KEY([НомерЗаписи])
REFERENCES [dbo].[КлиентыВРозыске] ([НомерЗаписи])
GO
ALTER TABLE [dbo].[ЧерныйСписок] CHECK CONSTRAINT [FK_ЧерныйСписок_КлиентыВРозыске]
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьГсВЗаказ]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ДобавитьГсВЗаказ]
	@НомерЕдиницы int,
	@НомерЗаказа int
as
insert into ГСОружиеВЗаказах values(@НомерЕдиницы, @НомерЗаказа);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьЕдиницуГс]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ДобавитьЕдиницуГс]
	@СерийныйНомер nvarchar(50),
	@НомерТипа int
AS
DECLARE @Ident table(
ID int 
);
DECLARE @НомерЕдиницы int;
INSERT INTO ГладкоствольноеОружие(СерийныйНомерГс)
	OUTPUT INSERTED.НомерЕдиницыГс INTO @Ident
	VALUES(@СерийныйНомер);
SELECT @НомерЕдиницы = ID FROM  @Ident
INSERT INTO ТипыЕдиницГс OUTPUT Inserted.НомерЕдиницыГс VALUES(@НомерЕдиницы, @НомерТипа) 
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьЕдиницуНар]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ДобавитьЕдиницуНар]
	@СерийныйНомер nvarchar(50),
	@НомерТипа int
AS
DECLARE @Ident table(
ID int 
);
DECLARE @НомерЕдиницы int;
INSERT INTO НарезноеОружие(СерийныйНомерНар)
	OUTPUT INSERTED.НомерЕдиницыНар INTO @Ident
	VALUES(@СерийныйНомер);
SELECT @НомерЕдиницы = ID FROM  @Ident
INSERT INTO ТипыЕдиницНарезное VALUES(@НомерЕдиницы, @НомерТипа);
return @НомерЕдиницы
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьЕдиницуОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ДобавитьЕдиницуОооп]
	@СерийныйНомер nvarchar(50),
	@НомерТипа int
AS
DECLARE @Ident table(
ID int 
);
DECLARE @НомерЕдиницы int;
INSERT INTO Оооп(СерийныйНомерОооп)
	OUTPUT INSERTED.НомерЕдиницыОооп INTO @Ident
	VALUES(@СерийныйНомер);
SELECT @НомерЕдиницы = ID FROM  @Ident
INSERT INTO ТипыЕдиницОооп VALUES(@НомерЕдиницы, @НомерТипа);
return @НомерЕдиницы
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьКлиента]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ДобавитьКлиента]
	@ФиоКлиента nvarchar(max),
	@ТелефонКлиента nchar(15),
	@СуммаПокупок float = 0
AS
DECLARE @Ident table(
ID int 
);
DECLARE @НомерКлиента int;
INSERT INTO Клиенты (ФИО, Телефон, СуммаПокупок) OUTPUT INSERTED.НомерКлиента  INTO @Ident VALUES(@ФиоКлиента, @ТелефонКлиента, @СуммаПокупок);
SELECT @НомерКлиента = ID FROM @Ident;
RETURN @НомерКлиента
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьЛицензиюГс]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ДобавитьЛицензиюГс]
	@НомерЛиц varchar(50),
	@Фио varchar(max),
	@ДатаВыдачи date,
	@ДействительнаДо date,
	@КемВыдана varchar(max)
as
insert into ЛицензииГС values(@НомерЛиц, @Фио, @ДатаВыдачи, @ДействительнаДо, @КемВыдана);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьЛицензиюНар]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ДобавитьЛицензиюНар]
	@НомерЛиц varchar(50),
	@Фио varchar(max),
	@ДатаВыдачи date,
	@ДействительнаДо date,
	@КемВыдана varchar(max)
as
insert into ЛицензииНарезное values(@НомерЛиц, @Фио, @ДатаВыдачи, @ДействительнаДо, @КемВыдана);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьЛицензиюОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ДобавитьЛицензиюОооп]
	@НомерЛиц varchar(50),
	@Фио varchar(max),
	@ДатаВыдачи date,
	@ДействительнаДо date,
	@КемВыдана varchar(max)
as
insert into ЛицензииОооп values(@НомерЛиц, @Фио, @ДатаВыдачи, @ДействительнаДо, @КемВыдана);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьНарВЗаказ]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ДобавитьНарВЗаказ]
	@НомерЕдиницы int,
	@НомерЗаказа int
as
insert into НарезноеОружиеВЗаказах values(@НомерЕдиницы, @НомерЗаказа);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьОоопВЗаказ]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ДобавитьОоопВЗаказ]
	@НомерЕдиницы int,
	@НомерЗаказа int
as
insert into ОоопВЗаказах values(@НомерЕдиницы, @НомерЗаказа);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьТипГС]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ДобавитьТипГС]
	@Калибр nvarchar(50),
	@ДлинаСтвола int,
	@ЕмкостьМагазина int,
	@СистемаАвтоматики nvarchar(50),
	@ДульныеСужения nvarchar(max)
AS
INSERT INTO ХарактеристикиГС(КалибрГс, ДлинаСтволаГс, ЕмкостьМагазинаГс, СистемаАвтоматикиГс, ДульныеСуженияГс)
	OUTPUT INSERTED.НомерТипаГс
	VALUES(@Калибр, @ДлинаСтвола, @ЕмкостьМагазина, @СистемаАвтоматики, @ДульныеСужения);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьТипНарезное]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ДобавитьТипНарезное]
	@Калибр nvarchar(50),
	@ДлинаСтвола int,
	@ЕмкостьМагазина int,
	@СистемаАвтоматики nvarchar(50),
	@ШагНарезов nvarchar(max)
AS
INSERT INTO ХарактеристикиНарезное(КалибрНар, ДлинаСтволаНар, ЕмкостьМагазинаНар, СистемаАвтоматикиНар, ШагНарезовНар)
	OUTPUT INSERTED.НомерТипаНар
	VALUES(@Калибр, @ДлинаСтвола, @ЕмкостьМагазина, @СистемаАвтоматики, @ШагНарезов);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьТипОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ДобавитьТипОооп]
	@Калибр nvarchar(50),
	@ДлинаСтвола int,
	@ЕмкостьМагазина int,
	@СистемаАвтоматики nvarchar(50)
AS
INSERT INTO ХарактеристикиОооп(КалибрОооп, ДлинаСтволаОооп, ЕмкостьМагазинаОооп, СистемаАвтоматикиОооп)
	OUTPUT INSERTED.НомерТипаОооп
	VALUES(@Калибр, @ДлинаСтвола, @ЕмкостьМагазина, @СистемаАвтоматики);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьТовар]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ДобавитьТовар]
	@Название nvarchar(50),
	@Описание nvarchar(max),
	@Цена money,
	@Остаток int,
	@НомерТипаГС int = null,
	@НомерТипаНар int = null,
	@НомерТипаОООП int = null,
	@НомерТипаПатронов int = null
AS
INSERT INTO Товары(Название, Описание, Цена, Остаток, НомерТипаГС, НомерТипаНар, НомерТипаОооп, НомерТипаПатронов)
	OUTPUT INSERTED.Артикул
	VALUES(@Название, @Описание, @Цена, @Остаток, @НомерТипаГС, @НомерТипаНар, @НомерТипаОооп, @НомерТипаПатронов);
GO
/****** Object:  StoredProcedure [dbo].[ДобавитьТоварВЗаказ]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ДобавитьТоварВЗаказ]
	@НомерЗаказа int,
	@Артикул int,
	@Количество int
AS
DECLARE @Цена money, @ТекущаяСумма money;
INSERT INTO ТоварыВЗаказах VALUES(@НомерЗаказа, @Артикул, @Количество);
SELECT @Цена = Цена FROM Товары WHERE Артикул = @Артикул;
SELECT @ТекущаяСумма = СуммаЗаказа FROM Заказы WHERE НомерЗаказа = @НомерЗаказа;
UPDATE Заказы SET СуммаЗаказа = (@ТекущаяСумма + (@Цена * @Количество)) WHERE НомерЗаказа = @НомерЗаказа;

DECLARE @СтароеКоличество int;
SELECT @СтароеКоличество = Остаток FROM Товары WHERE Артикул = @Артикул;
UPDATE Товары SET Остаток = @СтароеКоличество - @Количество WHERE Артикул = @Артикул;
GO
/****** Object:  StoredProcedure [dbo].[ЗавершитьЗаказ]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗавершитьЗаказ]
	@НомерЗаказа int
as
	update Заказы set СтатусЗаказа = 'Завершен' where НомерЗаказа = @НомерЗаказа;
GO
/****** Object:  StoredProcedure [dbo].[ЗанятьЕдиницуГс]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗанятьЕдиницуГс]
	@id int
as
update ГладкоствольноеОружие set Занято = 1 where НомерЕдиницыГС = @id;
GO
/****** Object:  StoredProcedure [dbo].[ЗанятьЕдиницуНар]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗанятьЕдиницуНар]
	@id int
as
update НарезноеОружие set Занято = 1 where НомерЕдиницыНар = @id;
GO
/****** Object:  StoredProcedure [dbo].[ЗанятьЕдиницуОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗанятьЕдиницуОооп]
	@id int
as
update Оооп set Занято = 1 where НомерЕдиницыОооп = @id;
GO
/****** Object:  StoredProcedure [dbo].[ОтпуститьОружиеГс]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ОтпуститьОружиеГс]
	@НомерЕдиницы int,
	@НомерЛицензииГс varchar(50)
as
update ГладкоствольноеОружие set ОтпущеноПоЛицензииГС = @НомерЛицензииГс where НомерЕдиницыГС = @НомерЕдиницы;
GO
/****** Object:  StoredProcedure [dbo].[ОтпуститьОружиеНар]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ОтпуститьОружиеНар]
	@НомерЕдиницы int,
	@НомерЛицензииНар varchar(50)
as
update НарезноеОружие set ОтпущеноПоЛицензииНар = @НомерЛицензииНар where НомерЕдиницыНар = @НомерЕдиницы;
GO
/****** Object:  StoredProcedure [dbo].[ОтпуститьОружиеОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ОтпуститьОружиеОооп]
	@НомерЕдиницы int,
	@НомерЛицензии varchar(50)
as
update Оооп set ОтпущеноПоЛицензииОооп = @НомерЛицензии where НомерЕдиницыОооп = @НомерЕдиницы;
GO
/****** Object:  StoredProcedure [dbo].[СвободнаяЕдиницаГс]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[СвободнаяЕдиницаГс]
@r int output
as
select top 1 @r = НомерЕдиницыГС from ГладкоствольноеОружие where ОтпущеноПоЛицензииГС is null and Занято = 0;
GO
/****** Object:  StoredProcedure [dbo].[СвободнаяЕдиницаНар]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[СвободнаяЕдиницаНар]
@r int output
as
select top 1 @r = НомерЕдиницыНар from НарезноеОружие where ОтпущеноПоЛицензииНар is null and Занято = 0;
GO
/****** Object:  StoredProcedure [dbo].[СвободнаяЕдиницаОооп]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[СвободнаяЕдиницаОооп]
@r int output
as
select top 1 @r = НомерЕдиницыОооп from Оооп where ОтпущеноПоЛицензииОооп is null and Занято = 0;
GO
/****** Object:  StoredProcedure [dbo].[СоздатьЗаказ]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[СоздатьЗаказ]
	@НомерКлиента int
AS
declare @id int;
INSERT INTO Заказы(НомерКлиента, ДатаСоздания) VALUES (@НомерКлиента, GETDATE());
return SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[УдалитьЗаказ]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[УдалитьЗаказ]
	@НомерЗаказа int
AS
DECLARE @Артикул int;
DECLARE cur CURSOR FOR
	SELECT Артикул FROM ТоварыВЗаказах WHERE НомерЗаказа = @НомерЗаказа;
OPEN cur;
FETCH NEXT FROM cur INTO @Артикул;
WHILE @@FETCH_STATUS = 0
BEGIN
	EXEC УдалитьТоварИзЗаказа @НомерЗаказа, @Артикул;
	FETCH NEXT FROM cur INTO @Артикул;
END;
CLOSE cur;
DEALLOCATE cur;

DELETE FROM Заказы WHERE НомерЗаказа = @НомерЗаказа;
GO
/****** Object:  StoredProcedure [dbo].[УдалитьТоварИзЗаказа]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[УдалитьТоварИзЗаказа]
	@НомерЗаказа int,
	@Артикул int
AS
DECLARE @Колво int;
SELECT @Колво = Количество FROM ТоварыВЗаказах WHERE Артикул = @Артикул;

DELETE FROM ТоварыВЗаказах WHERE Артикул = @Артикул;

DECLARE @СтароеКоличество int;
SELECT @СтароеКоличество = Остаток FROM Товары WHERE Артикул = @Артикул;
UPDATE Товары SET Остаток = @СтароеКоличество + @Колво WHERE Артикул = @Артикул;
GO
/****** Object:  Trigger [dbo].[ЗапретЗаказаЧс]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[ЗапретЗаказаЧс] on [dbo].[Заказы]
after insert
as
if exists(select * from КлиентыВРозыске where НомерКлиента = (select НомерКлиента from inserted))
begin
print('Клиент в розыске!');
rollback tran;
end;
GO
ALTER TABLE [dbo].[Заказы] ENABLE TRIGGER [ЗапретЗаказаЧс]
GO
/****** Object:  Trigger [dbo].[НеИзменятьЗавершенныеЗаказы]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[НеИзменятьЗавершенныеЗаказы]
on [dbo].[Заказы]
after update
as
declare @status nvarchar(50);
select @status = СтатусЗаказа from inserted;
if(@status = 'Завершен')
begin
	print 'Заказ завершен - изменения запрещены';
	rollback tran;
end
GO
ALTER TABLE [dbo].[Заказы] DISABLE TRIGGER [НеИзменятьЗавершенныеЗаказы]
GO
/****** Object:  Trigger [dbo].[НеУдалятьЗавершенныеЗаказы]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[НеУдалятьЗавершенныеЗаказы]
on [dbo].[Заказы]
after delete
as
declare @status nvarchar(50);
select @status = СтатусЗаказа from deleted;
if(@status = 'Завершен')
begin
	print 'Заказ завершен - изменения запрещены';
	rollback tran;
end
GO
ALTER TABLE [dbo].[Заказы] ENABLE TRIGGER [НеУдалятьЗавершенныеЗаказы]
GO
/****** Object:  Trigger [dbo].[ОбновитьСуммуПокупок]    Script Date: 6/22/2020 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[ОбновитьСуммуПокупок]
on [dbo].[Заказы]
after update
as
declare @Status nvarchar(50);
select @Status = СтатусЗаказа from inserted;
if @Status = 'Завершен'
begin
	declare @ClientID int;
	select @ClientID = НомерКлиента from inserted;
	declare @Sum money, @OrderMoney money;
	set @Sum = 0;
	declare cur cursor for select СуммаЗаказа from Заказы where НомерКлиента = @ClientID;
	open cur;
	fetch next from cur into @OrderMoney;
	set @Sum = @Sum + @OrderMoney;
	while @@FETCH_STATUS = 0
	begin
		fetch next from cur into @OrderMoney;
		set @Sum = @Sum + @OrderMoney;
	end;
	close cur;
	deallocate cur;
	update Клиенты set СуммаПокупок = @Sum where НомерКлиента=@ClientID;
end
GO
ALTER TABLE [dbo].[Заказы] ENABLE TRIGGER [ОбновитьСуммуПокупок]
GO

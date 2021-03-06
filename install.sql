USE [Gunstore]
GO
/****** Object:  Table [dbo].[ГладкоствольноеОружие]    Script Date: 6/22/2020 8:55:06 PM ******/
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
/****** Object:  Table [dbo].[ГСОружиеВЗаказах]    Script Date: 6/22/2020 8:55:06 PM ******/
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
/****** Object:  Table [dbo].[Заказы]    Script Date: 6/22/2020 8:55:06 PM ******/
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
/****** Object:  Table [dbo].[Клиенты]    Script Date: 6/22/2020 8:55:06 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Клиенты] UNIQUE NONCLUSTERED 
(
	[Телефон] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[КлиентыВРозыске]    Script Date: 6/22/2020 8:55:06 PM ******/
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
/****** Object:  Table [dbo].[ЛицензииГС]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ЛицензииНарезное]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ЛицензииОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[НарезноеОружие]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[НарезноеОружиеВЗаказах]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[Оооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ОоопВЗаказах]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[Патроны]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[Разрешения]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[СкидкиКлиентов]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ТипыЕдиницГС]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ТипыЕдиницНарезное]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ТипыЕдиницОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[Товары]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ТоварыВЗаказах]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[УровниСкидки]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ХарактеристикиГС]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ХарактеристикиНарезное]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ХарактеристикиОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Table [dbo].[ЧерныйСписок]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьГсВЗаказ]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьЕдиницуГс]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьЕдиницуНар]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьЕдиницуОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьКлиента]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьЛицензиюГс]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьЛицензиюНар]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьЛицензиюОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьНарВЗаказ]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьОоопВЗаказ]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьТипГС]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьТипНарезное]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьТипОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьТовар]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ДобавитьТоварВЗаказ]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ЗавершитьЗаказ]    Script Date: 6/22/2020 8:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗавершитьЗаказ]
	@НомерЗаказа int
as
	update Заказы set СтатусЗаказа = 'Завершен' where НомерЗаказа = @НомерЗаказа;
GO
/****** Object:  StoredProcedure [dbo].[ЗанятьЕдиницуГс]    Script Date: 6/22/2020 8:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗанятьЕдиницуГс]
	@id int
as
update ГладкоствольноеОружие set Занято = 1 where НомерЕдиницыГС = @id;
GO
/****** Object:  StoredProcedure [dbo].[ЗанятьЕдиницуНар]    Script Date: 6/22/2020 8:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗанятьЕдиницуНар]
	@id int
as
update НарезноеОружие set Занято = 1 where НомерЕдиницыНар = @id;
GO
/****** Object:  StoredProcedure [dbo].[ЗанятьЕдиницуОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ЗанятьЕдиницуОооп]
	@id int
as
update Оооп set Занято = 1 where НомерЕдиницыОооп = @id;
GO
/****** Object:  StoredProcedure [dbo].[ОтпуститьОружиеГс]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ОтпуститьОружиеНар]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ОтпуститьОружиеОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[СвободнаяЕдиницаГс]    Script Date: 6/22/2020 8:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[СвободнаяЕдиницаГс]
@r int output
as
select top 1 @r = НомерЕдиницыГС from ГладкоствольноеОружие where ОтпущеноПоЛицензииГС is null and Занято = 0;
GO
/****** Object:  StoredProcedure [dbo].[СвободнаяЕдиницаНар]    Script Date: 6/22/2020 8:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[СвободнаяЕдиницаНар]
@r int output
as
select top 1 @r = НомерЕдиницыНар from НарезноеОружие where ОтпущеноПоЛицензииНар is null and Занято = 0;
GO
/****** Object:  StoredProcedure [dbo].[СвободнаяЕдиницаОооп]    Script Date: 6/22/2020 8:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[СвободнаяЕдиницаОооп]
@r int output
as
select top 1 @r = НомерЕдиницыОооп from Оооп where ОтпущеноПоЛицензииОооп is null and Занято = 0;
GO
/****** Object:  StoredProcedure [dbo].[СоздатьЗаказ]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[УдалитьЗаказ]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[УдалитьТоварИзЗаказа]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Trigger [dbo].[ЗапретЗаказаЧс]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Trigger [dbo].[НеИзменятьЗавершенныеЗаказы]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Trigger [dbo].[НеУдалятьЗавершенныеЗаказы]    Script Date: 6/22/2020 8:55:07 PM ******/
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
/****** Object:  Trigger [dbo].[ОбновитьСуммуПокупок]    Script Date: 6/22/2020 8:55:07 PM ******/
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

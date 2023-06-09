USE [MyDataBase]
GO
/****** Object:  Table [dbo].[AdditionalImage]    Script Date: 16.05.2023 0:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalImage](
	[Id] [int] NOT NULL,
	[Image] [varchar](100) NOT NULL,
	[ServiceId] [int] NOT NULL,
 CONSTRAINT [PK_AdditionalImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 16.05.2023 0:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] NOT NULL,
	[Surname] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Patronymic] [varchar](100) NOT NULL,
	[GenderId] [int] NOT NULL,
	[Phone] [varchar](100) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 16.05.2023 0:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[Id] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[ServiceDate] [datetime] NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 16.05.2023 0:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 16.05.2023 0:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Image] [varchar](100) NOT NULL,
	[Duration] [int] NOT NULL,
	[Cost] [int] NOT NULL,
	[Discount] [int] NULL,
	[Description] [varchar](150) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AdditionalImage] ([Id], [Image], [ServiceId]) VALUES (1576, N'C:\Users\Azarch\Desktop\ДЭ_4\Общие ресурсы\school_logo.ico', 101)
GO
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (1, N'Васильев', N'Оскар', N'Богданович', 1, N'7(585)801-94-29 ', CAST(N'1971-01-30T00:00:00.000' AS DateTime), N'miturria@verizon.net', CAST(N'2017-05-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (2, N'Лазарев', N'Алексей', N'Богданович', 1, N'7(0055)737-37-48 ', CAST(N'1977-03-10T00:00:00.000' AS DateTime), N'claesjac@me.com', CAST(N'2017-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (3, N'Казаков', N'Дмитрий', N'Русланович', 1, N'7(51)682-19-40 ', CAST(N'1978-12-15T00:00:00.000' AS DateTime), N'ozawa@verizon.net', CAST(N'2016-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (4, N'Попова', N'Харита', N'Якуновна', 2, N'7(335)386-81-06 ', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'firstpr@verizon.net', CAST(N'2016-07-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (5, N'Турова', N'Георгина', N'Семёновна', 2, N'7(555)321-42-99 ', CAST(N'1974-05-28T00:00:00.000' AS DateTime), N'yruan@optonline.net', CAST(N'2018-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (6, N'Андреев', N'Станислав', N'Максович', 1, N'7(02)993-91-28 ', CAST(N'1975-10-10T00:00:00.000' AS DateTime), N'budinger@mac.com', CAST(N'2017-12-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (7, N'Орлова', N'Влада', N'Мартыновна', 2, N'7(2506)433-38-35 ', CAST(N'1990-06-26T00:00:00.000' AS DateTime), N'rnelson@yahoo.ca', CAST(N'2016-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (8, N'Костина', N'Любава', N'Авксентьевна', 2, N'7(6419)959-21-87 ', CAST(N'1972-07-13T00:00:00.000' AS DateTime), N'gordonjcp@hotmail.com', CAST(N'2016-02-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (9, N'Александров', N'Станислав', N'Эдуардович', 1, N'7(18)164-05-12 ', CAST(N'1981-07-04T00:00:00.000' AS DateTime), N'bigmauler@aol.com', CAST(N'2018-11-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (10, N'Корнилова', N'Анэля', N'Михайловна', 2, N'7(20)980-01-60 ', CAST(N'1973-04-02T00:00:00.000' AS DateTime), N'jonathan@aol.com', CAST(N'2016-05-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (11, N'Морозов', N'Наум', N'Валерьянович', 1, N'7(636)050-96-13 ', CAST(N'1985-07-04T00:00:00.000' AS DateTime), N'salesgeek@mac.com', CAST(N'2016-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (12, N'Баранова', N'Эльмира', N'Дмитриевна', 2, N'7(9240)643-15-50 ', CAST(N'1977-01-15T00:00:00.000' AS DateTime), N'jgmyers@comcast.net', CAST(N'2016-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (13, N'Степанова', N'Амелия', N'Робертовна', 2, N'7(1217)441-28-42 ', CAST(N'1970-06-06T00:00:00.000' AS DateTime), N'rasca@hotmail.com', CAST(N'2017-09-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (14, N'Горбачёв', N'Давид', N'Тимурович', 1, N'7(53)602-85-41 ', CAST(N'1983-05-22T00:00:00.000' AS DateTime), N'hedwig@att.net', CAST(N'2018-12-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (15, N'Волков', N'Людвиг', N'Витальевич', 1, N'7(8459)592-05-58 ', CAST(N'1977-12-27T00:00:00.000' AS DateTime), N'jrkorson@msn.com', CAST(N'2016-04-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (16, N'Комиссарова', N'Амалия', N'Робертовна', 2, N'7(22)647-46-32 ', CAST(N'1971-08-18T00:00:00.000' AS DateTime), N'jorgb@msn.com', CAST(N'2017-08-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (17, N'Большаков', N'Вадим', N'Данилович', 1, N'7(386)641-13-37 ', CAST(N'1970-05-15T00:00:00.000' AS DateTime), N'uncle@gmail.com', CAST(N'2018-08-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (18, N'Абрамов', N'Станислав', N'Филатович', 1, N'7(6545)478-87-79 ', CAST(N'1989-05-18T00:00:00.000' AS DateTime), N'solomon@att.net', CAST(N'2016-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (19, N'Журавлёв', N'Леонтий', N'Яковлевич', 1, N'7(4403)308-56-96 ', CAST(N'2000-03-02T00:00:00.000' AS DateTime), N'cmdrgravy@me.com', CAST(N'2018-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (20, N'Селиверстов', N'Глеб', N'Максимович', 1, N'7(20)554-28-68 ', CAST(N'1999-06-20T00:00:00.000' AS DateTime), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (21, N'Киселёв', N'Устин', N'Яковлевич', 1, N'7(83)334-52-76 ', CAST(N'1985-01-08T00:00:00.000' AS DateTime), N'dalamb@verizon.net', CAST(N'2018-06-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (22, N'Зуев', N'Матвей', N'Иванович', 1, N'7(5383)893-04-66 ', CAST(N'1981-03-28T00:00:00.000' AS DateTime), N'brickbat@verizon.net', CAST(N'2018-12-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (23, N'Ершов', N'Глеб', N'Федорович', 1, N'7(2608)298-40-82 ', CAST(N'1970-06-14T00:00:00.000' AS DateTime), N'sjava@aol.com', CAST(N'2016-09-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (24, N'Бобылёв', N'Георгий', N'Витальевич', 1, N'7(88)685-13-51 ', CAST(N'1983-12-19T00:00:00.000' AS DateTime), N'csilvers@mac.com', CAST(N'2018-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (25, N'Ефремов', N'Витольд', N'Авксентьевич', 1, N'7(93)922-14-03 ', CAST(N'1975-12-02T00:00:00.000' AS DateTime), N'kwilliams@yahoo.ca', CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (26, N'Андреева', N'Патрисия', N'Валерьевна', 2, N'7(9648)953-81-26 ', CAST(N'1993-11-18T00:00:00.000' AS DateTime), N'jigsaw@aol.com', CAST(N'2016-07-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (27, N'Ефимова', N'Магда', N'Платоновна', 2, N'7(9261)386-15-92 ', CAST(N'1995-08-16T00:00:00.000' AS DateTime), N'rbarreira@me.com', CAST(N'2017-08-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (28, N'Голубев', N'Иосиф', N'Тимофеевич', 1, N'7(78)972-73-11 ', CAST(N'1982-05-06T00:00:00.000' AS DateTime), N'smcnabb@att.net', CAST(N'2018-08-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (29, N'Евсеев', N'Макар', N'Васильевич', 1, N'7(2141)077-85-70 ', CAST(N'1977-09-13T00:00:00.000' AS DateTime), N'parsimony@sbcglobal.net', CAST(N'2018-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (30, N'Бобров', N'Агафон', N'Лаврентьевич', 1, N'7(2159)507-39-57 ', CAST(N'1995-07-29T00:00:00.000' AS DateTime), N'petersen@comcast.net', CAST(N'2017-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (31, N'Игнатов', N'Захар', N'Павлович', 1, N'7(578)574-73-36 ', CAST(N'1998-10-07T00:00:00.000' AS DateTime), N'dieman@icloud.com', CAST(N'2017-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (32, N'Гущина', N'Янита', N'Федоровна', 2, N'7(4544)716-68-96 ', CAST(N'1999-03-02T00:00:00.000' AS DateTime), N'lishoy@att.net', CAST(N'2018-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (33, N'Калашников', N'Артур', N'Юрьевич', 1, N'7(147)947-47-21 ', CAST(N'1972-12-13T00:00:00.000' AS DateTime), N'oevans@aol.com', CAST(N'2017-08-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (34, N'Дмитриева', N'Элина', N'Даниловна', 2, N'7(787)140-48-84 ', CAST(N'1988-12-10T00:00:00.000' AS DateTime), N'vmalik@live.com', CAST(N'2017-02-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (35, N'Федотова', N'Сандра', N'Владленовна', 2, N'7(126)195-25-86 ', CAST(N'1985-03-29T00:00:00.000' AS DateTime), N'penna@verizon.net', CAST(N'2016-11-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (36, N'Кузьмина', N'Дэнна', N'Витальевна', 2, N'7(9940)977-45-73 ', CAST(N'1993-08-24T00:00:00.000' AS DateTime), N'nichoj@mac.com', CAST(N'2016-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (37, N'Колобова', N'Злата', N'Романовна', 2, N'7(50)884-07-35 ', CAST(N'1994-08-25T00:00:00.000' AS DateTime), N'sinkou@aol.com', CAST(N'2016-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (38, N'Некрасов', N'Варлам', N'Михайлович', 1, N'7(019)258-06-35 ', CAST(N'2000-11-12T00:00:00.000' AS DateTime), N'dogdude@verizon.net', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (39, N'Колобов', N'Орест', N'Юлианович', 1, N'7(1680)508-58-26 ', CAST(N'2001-07-14T00:00:00.000' AS DateTime), N'parkes@verizon.net', CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (40, N'Блохин', N'Пантелеймон', N'Феликсович', 1, N'7(9524)556-48-98 ', CAST(N'1978-03-06T00:00:00.000' AS DateTime), N'balchen@comcast.net', CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (41, N'Калинин', N'Петр', N'Иванович', 1, N'7(90)316-07-17 ', CAST(N'1993-09-08T00:00:00.000' AS DateTime), N'aschmitz@hotmail.com', CAST(N'2016-05-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (42, N'Беляева', N'Сабрина', N'Федосеевна', 2, N'7(6580)534-32-58 ', CAST(N'1972-07-26T00:00:00.000' AS DateTime), N'agapow@gmail.com', CAST(N'2017-06-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (43, N'Агафонов', N'Юстиниан', N'Олегович', 1, N'7(303)810-28-78 ', CAST(N'1997-02-02T00:00:00.000' AS DateTime), N'staffelb@sbcglobal.net', CAST(N'2016-06-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (44, N'Мамонтова', N'Марфа', N'Мироновна', 2, N'7(38)095-64-18 ', CAST(N'1984-10-19T00:00:00.000' AS DateTime), N'rfoley@verizon.net', CAST(N'2018-02-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (45, N'Блинов', N'Евгений', N'Мэлсович', 1, N'7(0852)321-82-64 ', CAST(N'1994-01-05T00:00:00.000' AS DateTime), N'moxfulder@outlook.com', CAST(N'2017-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (46, N'Воронова', N'Изабелла', N'Вячеславовна', 2, N'7(17)433-44-98 ', CAST(N'1999-09-24T00:00:00.000' AS DateTime), N'kildjean@sbcglobal.net', CAST(N'2017-12-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (47, N'Медведев', N'Святослав', N'Юлианович', 1, N'7(3520)435-21-20 ', CAST(N'1972-10-04T00:00:00.000' AS DateTime), N'hllam@comcast.net', CAST(N'2018-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (48, N'Куликова', N'Эвелина', N'Вячеславовна', 2, N'7(0236)682-42-78 ', CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'ilikered@hotmail.com', CAST(N'2018-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (49, N'Суворова', N'Божена', N'Анатольевна', 2, N'7(347)895-86-57 ', CAST(N'1981-03-09T00:00:00.000' AS DateTime), N'attwood@aol.com', CAST(N'2016-01-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (50, N'Егорова', N'Амалия', N'Дамировна', 2, N'7(7486)408-12-26 ', CAST(N'1999-09-28T00:00:00.000' AS DateTime), N'drezet@yahoo.com', CAST(N'2016-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (1, 10, CAST(N'2019-11-16T11:20:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (2, 41, CAST(N'2019-01-11T18:10:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (3, 19, CAST(N'2019-12-01T14:40:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (4, 28, CAST(N'2019-02-11T13:30:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (5, 30, CAST(N'2019-09-10T18:20:00.000' AS DateTime), 20)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (6, 26, CAST(N'2019-02-12T19:40:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (7, 92, CAST(N'2019-04-04T09:10:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (8, 20, CAST(N'2019-05-15T09:20:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (9, 52, CAST(N'2019-01-16T14:20:00.000' AS DateTime), 16)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (10, 34, CAST(N'2019-01-16T09:00:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (11, 52, CAST(N'2019-03-15T10:50:00.000' AS DateTime), 3)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (12, 41, CAST(N'2019-01-31T12:00:00.000' AS DateTime), 26)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (13, 64, CAST(N'2019-11-19T15:50:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (14, 32, CAST(N'2019-01-10T08:30:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (15, 52, CAST(N'2019-04-29T15:00:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (16, 80, CAST(N'2019-10-12T08:50:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (17, 48, CAST(N'2019-02-13T18:00:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (18, 64, CAST(N'2019-02-01T18:00:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (19, 63, CAST(N'2019-11-12T18:50:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (20, 83, CAST(N'2019-01-11T12:50:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (21, 50, CAST(N'2019-03-23T19:50:00.000' AS DateTime), 9)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (22, 12, CAST(N'2019-06-23T08:00:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (23, 18, CAST(N'2019-05-25T17:10:00.000' AS DateTime), 38)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (24, 67, CAST(N'2019-02-18T18:20:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (25, 13, CAST(N'2019-07-17T08:20:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (26, 92, CAST(N'2019-08-06T16:50:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (27, 77, CAST(N'2019-12-14T08:40:00.000' AS DateTime), 1)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (28, 76, CAST(N'2019-06-28T14:20:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (29, 97, CAST(N'2019-06-06T19:20:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (30, 50, CAST(N'2019-06-07T17:20:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (31, 23, CAST(N'2019-04-30T18:10:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (32, 83, CAST(N'2019-08-30T11:40:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (33, 20, CAST(N'2019-05-08T14:10:00.000' AS DateTime), 25)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (34, 66, CAST(N'2019-10-27T16:20:00.000' AS DateTime), 42)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (35, 13, CAST(N'2019-01-05T08:40:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (36, 27, CAST(N'2019-03-04T17:20:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (37, 69, CAST(N'2019-09-29T13:40:00.000' AS DateTime), 50)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (38, 3, CAST(N'2019-01-22T10:50:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (39, 64, CAST(N'2019-12-19T19:30:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (40, 29, CAST(N'2019-11-15T17:50:00.000' AS DateTime), 32)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (41, 9, CAST(N'2019-07-04T17:10:00.000' AS DateTime), 12)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (42, 41, CAST(N'2019-08-06T11:50:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (43, 80, CAST(N'2019-11-09T13:00:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (44, 62, CAST(N'2019-02-16T18:50:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (45, 69, CAST(N'2019-03-03T17:20:00.000' AS DateTime), 23)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (46, 23, CAST(N'2019-05-22T16:10:00.000' AS DateTime), 13)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (47, 10, CAST(N'2019-07-31T18:10:00.000' AS DateTime), 36)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (48, 27, CAST(N'2019-08-29T19:00:00.000' AS DateTime), 16)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (49, 13, CAST(N'2019-10-02T10:10:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (50, 41, CAST(N'2019-03-16T11:30:00.000' AS DateTime), 8)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (51, 29, CAST(N'2019-08-27T11:40:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (52, 66, CAST(N'2019-06-13T11:30:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (53, 80, CAST(N'2019-08-18T16:00:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (54, 34, CAST(N'2019-12-26T16:30:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (55, 7, CAST(N'2019-11-27T18:50:00.000' AS DateTime), 20)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (56, 13, CAST(N'2019-09-06T19:20:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (57, 98, CAST(N'2019-09-24T13:40:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (58, 89, CAST(N'2019-03-01T11:50:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (59, 7, CAST(N'2019-09-28T10:00:00.000' AS DateTime), 16)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (60, 92, CAST(N'2019-03-20T10:40:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (61, 80, CAST(N'2019-11-27T11:30:00.000' AS DateTime), 3)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (62, 60, CAST(N'2019-01-23T18:30:00.000' AS DateTime), 26)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (63, 27, CAST(N'2019-10-21T10:20:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (64, 92, CAST(N'2019-08-11T12:50:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (65, 13, CAST(N'2019-01-03T14:40:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (66, 64, CAST(N'2019-12-31T08:30:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (67, 20, CAST(N'2019-08-29T10:10:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (68, 19, CAST(N'2019-01-03T18:50:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (69, 30, CAST(N'2019-04-09T11:10:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (70, 12, CAST(N'2019-12-31T19:10:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (71, 19, CAST(N'2019-10-17T13:30:00.000' AS DateTime), 9)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (72, 69, CAST(N'2019-05-17T13:30:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (73, 14, CAST(N'2019-11-23T18:40:00.000' AS DateTime), 38)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (74, 83, CAST(N'2019-07-10T15:30:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (75, 40, CAST(N'2019-06-09T13:40:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (76, 69, CAST(N'2019-01-09T10:20:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (77, 60, CAST(N'2019-08-15T18:30:00.000' AS DateTime), 1)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (78, 83, CAST(N'2019-07-15T14:10:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (79, 14, CAST(N'2019-12-31T18:00:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (80, 7, CAST(N'2019-12-22T09:20:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (81, 51, CAST(N'2019-12-28T16:00:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (82, 69, CAST(N'2019-06-26T10:10:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (83, 10, CAST(N'2019-04-29T12:40:00.000' AS DateTime), 25)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (84, 10, CAST(N'2019-04-13T09:00:00.000' AS DateTime), 42)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (85, 48, CAST(N'2019-01-05T16:00:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (86, 40, CAST(N'2019-03-25T18:20:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (87, 18, CAST(N'2019-11-09T18:50:00.000' AS DateTime), 50)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (88, 41, CAST(N'2019-04-07T10:40:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (89, 67, CAST(N'2019-11-11T18:50:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (90, 13, CAST(N'2019-01-06T15:00:00.000' AS DateTime), 32)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (91, 48, CAST(N'2019-08-20T19:10:00.000' AS DateTime), 12)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (92, 48, CAST(N'2019-04-16T13:20:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (93, 52, CAST(N'2019-12-22T15:10:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (94, 83, CAST(N'2019-01-22T16:50:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (95, 18, CAST(N'2019-09-04T08:10:00.000' AS DateTime), 23)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (96, 77, CAST(N'2019-01-01T14:50:00.000' AS DateTime), 13)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (97, 14, CAST(N'2019-01-29T16:30:00.000' AS DateTime), 36)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (98, 49, CAST(N'2019-07-06T11:30:00.000' AS DateTime), 16)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (99, 98, CAST(N'2019-12-05T10:20:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceDate], [ClientId]) VALUES (100, 48, CAST(N'2019-04-05T13:20:00.000' AS DateTime), 8)
GO
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (1, N'м')
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (2, N'ж')
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (1, N'Занятие с репетитором-носителем китайского языка', N'Услуги школы\Китайский язык.jpg', 120, 1950, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (2, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N'Услуги школы\Немецкий язык.png', 110, 1340, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (3, N'Киноклуб китайского языка для студентов', N'Услуги школы\киноклуб.jpg', 100, 1990, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (4, N'Индивидуальный онлайн-урок японского языка по Skype', N'Услуги школы\online lessons.jpg', 80, 1000, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (5, N'Киноклуб испанского языка для студентов', N'Услуги школы\киноклуб.jpg', 40, 1050, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (6, N'Занятие с русскоязычным репетитором испанского языка', N'Услуги школы\Испанский язык.jpg', 50, 1450, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (7, N'Урок в группе итальянского языка для взрослых', N'Услуги школы\Итальянский язык.jpg', 40, 1290, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (8, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 40, 1180, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (9, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'Услуги школы\Французский язык.jpg', 40, 1410, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (10, N'Урок в группе французского языка для школьников', N'Услуги школы\Французский язык.jpg', 100, 1970, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (11, N'Занятие с репетитором-носителем английского языка', N'Услуги школы\Английский язык.jpg', 110, 910, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (12, N'Киноклуб французского языка для взрослых', N'Услуги школы\киноклуб.jpg', 90, 1770, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (13, N'Киноклуб немецкого языка для взрослых', N'Услуги школы\киноклуб.jpg', 100, 1560, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (14, N'Урок в группе японского языка для школьников', N'Услуги школы\Японский язык.jpg', 80, 1300, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (15, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N'Услуги школы\Испанский язык.jpg', 60, 1790, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (16, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 70, 1230, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (17, N'Урок в группе японского языка для студентов', N'Услуги школы\Японский язык.jpg', 50, 1860, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (18, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N'Услуги школы\for company.jpg', 110, 1670, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (19, N'Киноклуб итальянского языка для студентов', N'Услуги школы\киноклуб.jpg', 30, 1760, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (20, N'Урок в группе испанского языка для взрослых', N'Услуги школы\Испанский язык.jpg', 30, 1730, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (21, N'Урок в группе испанского языка для студентов', N'Услуги школы\Испанский язык.jpg', 100, 1310, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (22, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 120, 1510, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (23, N'Урок в группе английского языка для школьников', N'Услуги школы\Английский язык.jpg', 110, 900, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (24, N'Занятие с репетитором-носителем испанского языка', N'Услуги школы\Испанский язык.jpg', 50, 1090, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (25, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N'Услуги школы\for company.jpg', 40, 1190, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (26, N'Урок в группе китайского языка для студентов', N'Услуги школы\Китайский язык.jpg', 40, 2000, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N'Услуги школы\Испанский язык.jpg', 90, 1200, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (28, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 70, 1610, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (29, N'Подготовка к экзамену ACT', N'Услуги школы\Подготовка к экзамену ACT.png', 50, 1440, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (30, N'Урок в группе китайского языка для взрослых', N'Услуги школы\Китайский язык.jpg', 70, 1730, 25, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (31, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 50, 1160, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (32, N'Подготовка к экзамену TOEFL', N'Услуги школы\Подготовка к экзамену TOEFL.jpg', 100, 1070, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (33, N'Занятие с репетитором-носителем итальянского языка', N'Услуги школы\Итальянский язык.jpg', 120, 1370, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (34, N'Урок в группе английского языка для взрослых', N'Услуги школы\Английский язык.jpg', 50, 1010, 25, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (35, N'Киноклуб английского языка для взрослых', N'Услуги школы\киноклуб.jpg', 70, 1250, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (36, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N'Услуги школы\for company.jpg', 70, 1630, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (37, N'Урок в группе испанского языка для школьников', N'Услуги школы\Испанский язык.jpg', 120, 1910, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (38, N'Подготовка к экзамену GRE', N'Услуги школы\Подготовка к экзамену GRE.jpeg', 80, 1300, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (39, N'Урок в группе английского языка для студентов', N'Услуги школы\Английский язык.jpg', 80, 960, 25, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (40, N'Занятие с русскоязычным репетитором японского языка', N'Услуги школы\Японский язык.jpg', 40, 1260, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (41, N'Индивидуальный онлайн-урок немецкого языка по Skype', N'Услуги школы\online lessons.jpg', 90, 970, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (42, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 80, 1500, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (43, N'Киноклуб китайского языка для взрослых', N'Услуги школы\киноклуб.jpg', 70, 1800, 25, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (44, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N'Услуги школы\Китайский язык.jpg', 120, 1860, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (45, N'Подготовка к экзамену GMAT', N'Услуги школы\Подготовка к экзамену GMAT.png', 70, 1150, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (46, N'Подготовка к экзамену IELTS', N'Услуги школы\Подготовка к экзамену IELTS.jpg', 120, 1730, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (47, N'Подготовка к экзамену SAT', N'Усуги школы\Подготовка к экзамену SAT.png', 40, 1560, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (48, N'Урок в группе китайского языка для школьников', N'Услуги школы\Китайский язык.jpg', 50, 1180, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (49, N'Киноклуб английского языка для студентов', N'Услуги школы\киноклуб.jpg', 80, 980, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (50, N'Киноклуб португальского языка для студентов', N'Услуги школы\киноклуб.jpg', 30, 1170, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (51, N'Киноклуб китайского языка для детей', N'Услуги школы\киноклуб.jpg', 100, 1120, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (52, N'Урок в группе немецкого языка для школьников', N'Услуги школы\Немецкий язык.png', 30, 1570, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (53, N'Индивидуальный онлайн-урок испанского языка по Skype', N'Услуги школы\online lessons.jpg', 70, 1780, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (54, N'Урок в группе немецкого языка для взрослых', N'Услуги школы\Немецкий язык.png', 60, 930, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (55, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N'Услуги школы\Китайский язык.jpg', 90, 1480, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (56, N'Занятие с русскоязычным репетитором португальского языка', N'Услуги школы\Португальский язык.jpg', 50, 1970, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (57, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 110, 1470, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (58, N'Занятие с русскоязычным репетитором немецкого языка', N'Услуги школы\Немецкий язык.png', 30, 1420, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (59, N'Киноклуб английского языка для детей', N'Услуги школы\киноклуб.jpg', 40, 1280, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (60, N'Занятие с репетитором-носителем немецкого языка', N'Услуги школы\Немецкий язык.png', 120, 1120, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (61, N'Индивидуальный онлайн-урок китайского языка по Skype', N'Услуги школы\online lessons.jpg', 70, 1410, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (62, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'Услуги школы\Английский язык.jpg', 120, 1300, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (63, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N'Услуги школы\for company.jpg', 120, 1180, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (64, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 70, 1840, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (65, N'Урок в группе итальянского языка для школьников', N'Услуги школы\Итальянский язык.jpg', 100, 1410, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (66, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N'Услуги школы\Итальянский язык.jpg', 30, 1330, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (67, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 120, 1760, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (68, N'Занятие с русскоязычным репетитором французского языка', N'Услуги школы\Французский язык.jpg', 100, 1870, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (69, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'Услуги школы\Немецкий язык.png', 30, 990, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (70, N'Индивидуальный онлайн-урок английского языка по Skype', N'Услуги школы\online lessons.jpg', 100, 1880, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (71, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N'Услуги школы\Французский язык.jpg', 70, 1390, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (72, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 60, 2010, 25, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (73, N'Индивидуальный онлайн-урок французского языка по Skype', N'Услуги школы\online lessons.jpg', 120, 2010, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (74, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 80, 1210, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (75, N'Урок в группе французского языка для взрослых', N'Услуги школы\Французский язык.jpg', 120, 960, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (76, N'Подготовка к экзамену IELTS Speaking Club', N'Улги школы\Подготовка к экзамену IELTS.jpg', 90, 1430, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (77, N'Киноклуб итальянского языка для детей', N'Услуги школы\киноклуб.jpg', 70, 1480, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (78, N'Урок в группе итальянского языка для студентов', N'Услуги школы\Итальянский язык.jpg', 110, 1020, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (79, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N'Услуги школы\Итальянский язык.jpg', 80, 1690, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (80, N'Киноклуб немецкого языка для детей', N'Услуги школы\киноклуб.jpg', 120, 1670, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (81, N'Киноклуб итальянского языка для взрослых', N'Услуги школы\киноклуб.jpg', 110, 1760, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (82, N'Киноклуб португальского языка для взрослых', N'Услуги школы\киноклуб.jpg', 30, 950, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (83, N'Киноклуб португальского языка для детей', N'Услуги школы\киноклуб.jpg', 90, 1710, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (84, N'Киноклуб французского языка для детей', N'Услуги школы\киноклуб.jpg', 90, 1600, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (85, N'Урок в группе японского языка для взрослых', N'Услуги школы\Японский язык.jpg', 80, 1420, 5, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (86, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 40, 1940, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (87, N'Занятие с русскоязычным репетитором итальянского языка', N'Услуги школы\Итальянский язык.jpg', 70, 1620, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (88, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N'Услуги школы\Английский язык.jpg', 30, 1910, 10, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (89, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N'Услуги школы\for company.jpg', 30, 1580, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (90, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 90, 1000, 25, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (91, N'Киноклуб немецкого языка для студентов', N'Услуги школы\киноклуб.jpg', 50, 1140, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (92, N'Занятие с репетитором-носителем французского языка', N'Услуги школы\Французский язык.jpg', 50, 2040, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (93, N'Урок в группе немецкого языка для студентов', N'Услуги школы\Немецкий язык.png', 70, 1240, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', N'Услуги школы\Китайский язык.jpg', 110, 940, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (95, N'Занятие с репетитором-носителем японского языка', N'Услуги школы\Японский язык.jpg', 50, 1100, 25, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (96, N'Урок в группе французского языка для студентов', N'Услуги школы\Французский язык.jpg', 30, 1910, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (97, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 110, 900, 0, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (98, N'Занятие с русскоязычным репетитором английского языка', N'Услуги школы\Английский язык.jpg', 90, 1950, 15, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (99, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N'Услуги школы\for company.jpg', 90, 1660, 0, NULL)
GO
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (100, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N'Услуги школы\for company.jpg', 70, 1380, 20, NULL)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount], [Description]) VALUES (101, N'444', N'file:///C:/Users/Azarch/Desktop/ДЭ_4/Общие ресурсы/school_logo.ico', 123, 123, 123, NULL)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
ALTER TABLE [dbo].[AdditionalImage]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalImage_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdditionalImage] CHECK CONSTRAINT [FK_AdditionalImage_Service]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO

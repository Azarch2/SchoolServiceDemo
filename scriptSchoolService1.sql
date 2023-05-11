USE [DB]
GO
/****** Object:  Table [dbo].[AdditionalImage]    Script Date: 11.05.2023 18:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](100) NOT NULL,
	[ServiceId] [int] NOT NULL,
 CONSTRAINT [PK_AdditionalImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 11.05.2023 18:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Patronymic] [varchar](50) NOT NULL,
	[GenderId] [varchar](10) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[RegistrationDate] [date] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 11.05.2023 18:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[ServiceTime] [datetime] NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 11.05.2023 18:25:31 ******/
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
	[Discount] [int] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdditionalImage] ON 

INSERT [dbo].[AdditionalImage] ([Id], [Image], [ServiceId]) VALUES (1, N'C:\Users\Azarch\Desktop\ДЭ_4\Общие ресурсы\school_logo.ico', 102)
SET IDENTITY_INSERT [dbo].[AdditionalImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (1, N'Васильев', N'Оскар', N'Богданович', N'м', N'7(585)801-94-29 ', CAST(N'1971-01-30' AS Date), N'miturria@verizon.net', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (2, N'Лазарев', N'Алексей', N'Богданович', N'м', N'7(0055)737-37-48 ', CAST(N'1977-03-10' AS Date), N'claesjac@me.com', CAST(N'2017-01-02' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (3, N'Казаков', N'Дмитрий', N'Русланович', N'м', N'7(51)682-19-40 ', CAST(N'1978-12-15' AS Date), N'ozawa@verizon.net', CAST(N'2016-05-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (4, N'Попова', N'Харита', N'Якуновна', N'ж', N'7(335)386-81-06 ', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', CAST(N'2016-07-05' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (5, N'Турова', N'Георгина', N'Семёновна', N'ж', N'7(555)321-42-99 ', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', CAST(N'2018-02-22' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (6, N'Андреев', N'Станислав', N'Максович', N'м', N'7(02)993-91-28 ', CAST(N'1975-10-10' AS Date), N'budinger@mac.com', CAST(N'2017-12-26' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (7, N'Орлова', N'Влада', N'Мартыновна', N'ж', N'7(2506)433-38-35 ', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (8, N'Костина', N'Любава', N'Авксентьевна', N'ж', N'7(6419)959-21-87 ', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', CAST(N'2016-02-26' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (9, N'Александров', N'Станислав', N'Эдуардович', N'м', N'7(18)164-05-12 ', CAST(N'1981-07-04' AS Date), N'bigmauler@aol.com', CAST(N'2018-11-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (10, N'Корнилова', N'Анэля', N'Михайловна', N'ж', N'7(20)980-01-60 ', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', CAST(N'2016-05-22' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (11, N'Морозов', N'Наум', N'Валерьянович', N'м', N'7(636)050-96-13 ', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (12, N'Баранова', N'Эльмира', N'Дмитриевна', N'ж', N'7(9240)643-15-50 ', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', CAST(N'2016-07-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (13, N'Степанова', N'Амелия', N'Робертовна', N'ж', N'7(1217)441-28-42 ', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', CAST(N'2017-09-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (14, N'Горбачёв', N'Давид', N'Тимурович', N'м', N'7(53)602-85-41 ', CAST(N'1983-05-22' AS Date), N'hedwig@att.net', CAST(N'2018-12-17' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (15, N'Волков', N'Людвиг', N'Витальевич', N'м', N'7(8459)592-05-58 ', CAST(N'1977-12-27' AS Date), N'jrkorson@msn.com', CAST(N'2016-04-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (16, N'Комиссарова', N'Амалия', N'Робертовна', N'ж', N'7(22)647-46-32 ', CAST(N'1971-08-18' AS Date), N'jorgb@msn.com', CAST(N'2017-08-04' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (17, N'Большаков', N'Вадим', N'Данилович', N'м', N'7(386)641-13-37 ', CAST(N'1970-05-15' AS Date), N'uncle@gmail.com', CAST(N'2018-08-04' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (18, N'Абрамов', N'Станислав', N'Филатович', N'м', N'7(6545)478-87-79 ', CAST(N'1989-05-18' AS Date), N'solomon@att.net', CAST(N'2016-12-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (19, N'Журавлёв', N'Леонтий', N'Яковлевич', N'м', N'7(4403)308-56-96 ', CAST(N'2000-03-02' AS Date), N'cmdrgravy@me.com', CAST(N'2018-01-15' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (20, N'Селиверстов', N'Глеб', N'Максимович', N'м', N'7(20)554-28-68 ', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (21, N'Киселёв', N'Устин', N'Яковлевич', N'м', N'7(83)334-52-76 ', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (22, N'Зуев', N'Матвей', N'Иванович', N'м', N'7(5383)893-04-66 ', CAST(N'1981-03-28' AS Date), N'brickbat@verizon.net', CAST(N'2018-12-18' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (23, N'Ершов', N'Глеб', N'Федорович', N'м', N'7(2608)298-40-82 ', CAST(N'1970-06-14' AS Date), N'sjava@aol.com', CAST(N'2016-09-14' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (24, N'Бобылёв', N'Георгий', N'Витальевич', N'м', N'7(88)685-13-51 ', CAST(N'1983-12-19' AS Date), N'csilvers@mac.com', CAST(N'2018-04-06' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (25, N'Ефремов', N'Витольд', N'Авксентьевич', N'м', N'7(93)922-14-03 ', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (26, N'Андреева', N'Патрисия', N'Валерьевна', N'ж', N'7(9648)953-81-26 ', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', CAST(N'2016-07-17' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (27, N'Ефимова', N'Магда', N'Платоновна', N'ж', N'7(9261)386-15-92 ', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', CAST(N'2017-08-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (28, N'Голубев', N'Иосиф', N'Тимофеевич', N'м', N'7(78)972-73-11 ', CAST(N'1982-05-06' AS Date), N'smcnabb@att.net', CAST(N'2018-08-18' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (29, N'Евсеев', N'Макар', N'Васильевич', N'м', N'7(2141)077-85-70 ', CAST(N'1977-09-13' AS Date), N'parsimony@sbcglobal.net', CAST(N'2018-12-05' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (30, N'Бобров', N'Агафон', N'Лаврентьевич', N'м', N'7(2159)507-39-57 ', CAST(N'1995-07-29' AS Date), N'petersen@comcast.net', CAST(N'2017-05-09' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (31, N'Игнатов', N'Захар', N'Павлович', N'м', N'7(578)574-73-36 ', CAST(N'1998-10-07' AS Date), N'dieman@icloud.com', CAST(N'2017-11-10' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (32, N'Гущина', N'Янита', N'Федоровна', N'ж', N'7(4544)716-68-96 ', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (33, N'Калашников', N'Артур', N'Юрьевич', N'м', N'7(147)947-47-21 ', CAST(N'1972-12-13' AS Date), N'oevans@aol.com', CAST(N'2017-08-20' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (34, N'Дмитриева', N'Элина', N'Даниловна', N'ж', N'7(787)140-48-84 ', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', CAST(N'2017-02-11' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (35, N'Федотова', N'Сандра', N'Владленовна', N'ж', N'7(126)195-25-86 ', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', CAST(N'2016-11-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (36, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N'7(9940)977-45-73 ', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (37, N'Колобова', N'Злата', N'Романовна', N'ж', N'7(50)884-07-35 ', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', CAST(N'2016-12-03' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (38, N'Некрасов', N'Варлам', N'Михайлович', N'м', N'7(019)258-06-35 ', CAST(N'2000-11-12' AS Date), N'dogdude@verizon.net', CAST(N'2017-12-03' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (39, N'Колобов', N'Орест', N'Юлианович', N'м', N'7(1680)508-58-26 ', CAST(N'2001-07-14' AS Date), N'parkes@verizon.net', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (40, N'Блохин', N'Пантелеймон', N'Феликсович', N'м', N'7(9524)556-48-98 ', CAST(N'1978-03-06' AS Date), N'balchen@comcast.net', CAST(N'2018-02-14' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (41, N'Калинин', N'Петр', N'Иванович', N'м', N'7(90)316-07-17 ', CAST(N'1993-09-08' AS Date), N'aschmitz@hotmail.com', CAST(N'2016-05-26' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (42, N'Беляева', N'Сабрина', N'Федосеевна', N'ж', N'7(6580)534-32-58 ', CAST(N'1972-07-26' AS Date), N'agapow@gmail.com', CAST(N'2017-06-14' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (43, N'Агафонов', N'Юстиниан', N'Олегович', N'м', N'7(303)810-28-78 ', CAST(N'1997-02-02' AS Date), N'staffelb@sbcglobal.net', CAST(N'2016-06-08' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (44, N'Мамонтова', N'Марфа', N'Мироновна', N'ж', N'7(38)095-64-18 ', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', CAST(N'2018-02-27' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (45, N'Блинов', N'Евгений', N'Мэлсович', N'м', N'7(0852)321-82-64 ', CAST(N'1994-01-05' AS Date), N'moxfulder@outlook.com', CAST(N'2017-05-07' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (46, N'Воронова', N'Изабелла', N'Вячеславовна', N'ж', N'7(17)433-44-98 ', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (47, N'Медведев', N'Святослав', N'Юлианович', N'м', N'7(3520)435-21-20 ', CAST(N'1972-10-04' AS Date), N'hllam@comcast.net', CAST(N'2018-10-13' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (48, N'Куликова', N'Эвелина', N'Вячеславовна', N'ж', N'7(0236)682-42-78 ', CAST(N'1997-11-14' AS Date), N'ilikered@hotmail.com', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (49, N'Суворова', N'Божена', N'Анатольевна', N'ж', N'7(347)895-86-57 ', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', CAST(N'2016-01-28' AS Date))
INSERT [dbo].[Client] ([Id], [Surname], [Name], [Patronymic], [GenderId], [Phone], [BirthDate], [Email], [RegistrationDate]) VALUES (50, N'Егорова', N'Амалия', N'Дамировна', N'ж', N'7(7486)408-12-26 ', CAST(N'1999-09-28' AS Date), N'drezet@yahoo.com', CAST(N'2016-06-30' AS Date))
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (1, 10, CAST(N'2019-11-16T11:20:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (2, 41, CAST(N'2019-01-11T18:10:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (3, 19, CAST(N'2019-12-01T14:40:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (4, 28, CAST(N'2019-02-11T13:30:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (5, 30, CAST(N'2019-09-10T18:20:00.000' AS DateTime), 20)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (6, 26, CAST(N'2019-02-12T19:40:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (7, 92, CAST(N'2019-04-04T09:10:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (8, 20, CAST(N'2019-05-15T09:20:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (9, 52, CAST(N'2019-01-16T14:20:00.000' AS DateTime), 16)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (10, 34, CAST(N'2019-01-16T09:00:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (11, 52, CAST(N'2019-03-15T10:50:00.000' AS DateTime), 3)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (12, 41, CAST(N'2019-01-31T12:00:00.000' AS DateTime), 26)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (13, 64, CAST(N'2019-11-19T15:50:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (14, 32, CAST(N'2019-01-10T08:30:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (15, 52, CAST(N'2019-04-29T15:00:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (16, 80, CAST(N'2019-10-12T08:50:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (17, 48, CAST(N'2019-02-13T18:00:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (18, 64, CAST(N'2019-02-01T18:00:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (19, 63, CAST(N'2019-11-12T18:50:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (20, 83, CAST(N'2019-01-11T12:50:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (21, 50, CAST(N'2019-03-23T19:50:00.000' AS DateTime), 9)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (22, 12, CAST(N'2019-06-23T08:00:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (23, 18, CAST(N'2019-05-25T17:10:00.000' AS DateTime), 38)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (24, 67, CAST(N'2019-02-18T18:20:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (25, 13, CAST(N'2019-07-17T08:20:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (26, 92, CAST(N'2019-08-06T16:50:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (27, 77, CAST(N'2019-12-14T08:40:00.000' AS DateTime), 1)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (28, 76, CAST(N'2019-06-28T14:20:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (29, 97, CAST(N'2019-06-06T19:20:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (30, 50, CAST(N'2019-06-07T17:20:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (31, 23, CAST(N'2019-04-30T18:10:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (32, 83, CAST(N'2019-08-30T11:40:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (33, 20, CAST(N'2019-05-08T14:10:00.000' AS DateTime), 25)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (34, 66, CAST(N'2019-10-27T16:20:00.000' AS DateTime), 42)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (35, 13, CAST(N'2019-01-05T08:40:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (36, 27, CAST(N'2019-03-04T17:20:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (37, 69, CAST(N'2019-09-29T13:40:00.000' AS DateTime), 50)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (38, 3, CAST(N'2019-01-22T10:50:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (39, 64, CAST(N'2019-12-19T19:30:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (40, 29, CAST(N'2019-11-15T17:50:00.000' AS DateTime), 32)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (41, 9, CAST(N'2019-07-04T17:10:00.000' AS DateTime), 12)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (42, 41, CAST(N'2019-08-06T11:50:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (43, 80, CAST(N'2019-11-09T13:00:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (44, 62, CAST(N'2019-02-16T18:50:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (45, 69, CAST(N'2019-03-03T17:20:00.000' AS DateTime), 23)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (46, 23, CAST(N'2019-05-22T16:10:00.000' AS DateTime), 13)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (47, 10, CAST(N'2019-07-31T18:10:00.000' AS DateTime), 36)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (48, 27, CAST(N'2019-08-29T19:00:00.000' AS DateTime), 16)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (49, 13, CAST(N'2019-10-02T10:10:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (50, 41, CAST(N'2019-03-16T11:30:00.000' AS DateTime), 8)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (51, 29, CAST(N'2019-08-27T11:40:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (52, 66, CAST(N'2019-06-13T11:30:00.000' AS DateTime), 18)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (53, 80, CAST(N'2019-08-18T16:00:00.000' AS DateTime), 4)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (54, 34, CAST(N'2019-12-26T16:30:00.000' AS DateTime), 14)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (55, 7, CAST(N'2019-11-27T18:50:00.000' AS DateTime), 11)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (56, 13, CAST(N'2019-09-06T19:20:00.000' AS DateTime), 47)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (57, 98, CAST(N'2019-09-24T13:40:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (58, 89, CAST(N'2019-03-01T11:50:00.000' AS DateTime), 32)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (59, 7, CAST(N'2019-09-28T10:00:00.000' AS DateTime), 5)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (60, 92, CAST(N'2019-03-20T10:40:00.000' AS DateTime), 15)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (61, 80, CAST(N'2019-11-27T11:30:00.000' AS DateTime), 10)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (62, 60, CAST(N'2019-01-23T18:30:00.000' AS DateTime), 3)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (63, 27, CAST(N'2019-10-21T10:20:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (64, 92, CAST(N'2019-08-11T12:50:00.000' AS DateTime), 28)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (65, 13, CAST(N'2019-01-03T14:40:00.000' AS DateTime), 7)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (66, 64, CAST(N'2019-12-31T08:30:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (67, 20, CAST(N'2019-08-29T10:10:00.000' AS DateTime), 41)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (68, 19, CAST(N'2019-01-03T18:50:00.000' AS DateTime), 13)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (69, 30, CAST(N'2019-04-09T11:10:00.000' AS DateTime), 14)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (70, 12, CAST(N'2019-12-31T19:10:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (71, 19, CAST(N'2019-10-17T13:30:00.000' AS DateTime), 2)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (72, 69, CAST(N'2019-05-17T13:30:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (73, 14, CAST(N'2019-11-23T18:40:00.000' AS DateTime), 11)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (74, 83, CAST(N'2019-07-10T15:30:00.000' AS DateTime), 10)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (75, 40, CAST(N'2019-06-09T13:40:00.000' AS DateTime), 37)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (76, 69, CAST(N'2019-01-09T10:20:00.000' AS DateTime), 23)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (77, 60, CAST(N'2019-08-15T18:30:00.000' AS DateTime), 2)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (78, 83, CAST(N'2019-07-15T14:10:00.000' AS DateTime), 29)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (79, 14, CAST(N'2019-12-31T18:00:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (80, 7, CAST(N'2019-12-22T09:20:00.000' AS DateTime), 32)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (81, 51, CAST(N'2019-12-28T16:00:00.000' AS DateTime), 14)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (82, 69, CAST(N'2019-06-26T10:10:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (83, 10, CAST(N'2019-04-29T12:40:00.000' AS DateTime), 10)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (84, 10, CAST(N'2019-04-13T09:00:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (85, 48, CAST(N'2019-01-05T16:00:00.000' AS DateTime), 23)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (86, 40, CAST(N'2019-03-25T18:20:00.000' AS DateTime), 5)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (87, 18, CAST(N'2019-11-09T18:50:00.000' AS DateTime), 29)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (88, 41, CAST(N'2019-04-07T10:40:00.000' AS DateTime), 31)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (89, 67, CAST(N'2019-11-11T18:50:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (90, 13, CAST(N'2019-01-06T15:00:00.000' AS DateTime), 34)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (91, 48, CAST(N'2019-08-20T19:10:00.000' AS DateTime), 4)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (92, 48, CAST(N'2019-04-16T13:20:00.000' AS DateTime), 45)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (93, 52, CAST(N'2019-12-22T15:10:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (94, 83, CAST(N'2019-01-22T16:50:00.000' AS DateTime), 40)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (95, 18, CAST(N'2019-09-04T08:10:00.000' AS DateTime), 8)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (96, 77, CAST(N'2019-01-01T14:50:00.000' AS DateTime), 41)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (97, 14, CAST(N'2019-01-29T16:30:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (98, 49, CAST(N'2019-07-06T11:30:00.000' AS DateTime), 40)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (99, 98, CAST(N'2019-12-05T10:20:00.000' AS DateTime), 28)
GO
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (100, 48, CAST(N'2019-04-05T13:20:00.000' AS DateTime), 20)
INSERT [dbo].[ClientService] ([Id], [ServiceId], [ServiceTime], [ClientId]) VALUES (101, 102, CAST(N'2023-05-12T12:00:00.000' AS DateTime), 29)
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (1, N'Занятие с репетитором-носителем китайского языка', N'Услуги школы\Китайский язык.jpg', 120, 1950, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (2, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N'Услуги школы\Немецкий язык.png', 110, 1340, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (3, N'Киноклуб китайского языка для студентов', N'Услуги школы\киноклуб.jpg', 100, 1990, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (4, N'Индивидуальный онлайн-урок японского языка по Skype', N'Услуги школы\online lessons.jpg', 80, 1000, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (5, N'Киноклуб испанского языка для студентов', N'Услуги школы\киноклуб.jpg', 40, 1050, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (6, N'Занятие с русскоязычным репетитором испанского языка', N'Услуги школы\Испанский язык.jpg', 50, 1450, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (7, N'Урок в группе итальянского языка для взрослых', N'Услуги школы\Итальянский язык.jpg', 40, 1290, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (8, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 40, 1180, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (9, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'Услуги школы\Французский язык.jpg', 40, 1410, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (10, N'Урок в группе французского языка для школьников', N'Услуги школы\Французский язык.jpg', 100, 1970, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (11, N'Занятие с репетитором-носителем английского языка', N'Услуги школы\Английский язык.jpg', 110, 910, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (12, N'Киноклуб французского языка для взрослых', N'Услуги школы\киноклуб.jpg', 90, 1770, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (13, N'Киноклуб немецкого языка для взрослых', N'Услуги школы\киноклуб.jpg', 100, 1560, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (14, N'Урок в группе японского языка для школьников', N'Услуги школы\Японский язык.jpg', 80, 1300, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (15, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N'Услуги школы\Испанский язык.jpg', 60, 1790, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (16, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 70, 1230, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (17, N'Урок в группе японского языка для студентов', N'Услуги школы\Японский язык.jpg', 50, 1860, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (18, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N'Услуги школы\for company.jpg', 110, 1670, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (19, N'Киноклуб итальянского языка для студентов', N'Услуги школы\киноклуб.jpg', 30, 1760, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (20, N'Урок в группе испанского языка для взрослых', N'Услуги школы\Испанский язык.jpg', 30, 1730, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (21, N'Урок в группе испанского языка для студентов', N'Услуги школы\Испанский язык.jpg', 100, 1310, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (22, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 120, 1510, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (23, N'Урок в группе английского языка для школьников', N'Услуги школы\Английский язык.jpg', 110, 900, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (24, N'Занятие с репетитором-носителем испанского языка', N'Услуги школы\Испанский язык.jpg', 50, 1090, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (25, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N'Услуги школы\for company.jpg', 40, 1190, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (26, N'Урок в группе китайского языка для студентов', N'Услуги школы\Китайский язык.jpg', 40, 2000, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N'Услуги школы\Испанский язык.jpg', 90, 1200, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (28, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 70, 1610, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (29, N'Подготовка к экзамену ACT', N'Услуги школы\Подготовка к экзамену ACT.png', 50, 1440, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (30, N'Урок в группе китайского языка для взрослых', N'Услуги школы\Китайский язык.jpg', 70, 1730, 25)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (31, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 50, 1160, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (32, N'Подготовка к экзамену TOEFL', N'Услуги школы\Подготовка к экзамену TOEFL.jpg', 100, 1070, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (33, N'Занятие с репетитором-носителем итальянского языка', N'Услуги школы\Итальянский язык.jpg', 120, 1370, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (34, N'Урок в группе английского языка для взрослых', N'Услуги школы\Английский язык.jpg', 50, 1010, 25)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (35, N'Киноклуб английского языка для взрослых', N'Услуги школы\киноклуб.jpg', 70, 1250, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (36, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N'Услуги школы\for company.jpg', 70, 1630, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (37, N'Урок в группе испанского языка для школьников', N'Услуги школы\Испанский язык.jpg', 120, 1910, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (38, N'Подготовка к экзамену GRE', N'Услуги школы\Подготовка к экзамену GRE.jpeg', 80, 1300, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (39, N'Урок в группе английского языка для студентов', N'Услуги школы\Английский язык.jpg', 80, 960, 25)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (40, N'Занятие с русскоязычным репетитором японского языка', N'Услуги школы\Японский язык.jpg', 40, 1260, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (41, N'Индивидуальный онлайн-урок немецкого языка по Skype', N'Услуги школы\online lessons.jpg', 90, 970, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (42, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 80, 1500, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (43, N'Киноклуб китайского языка для взрослых', N'Услуги школы\киноклуб.jpg', 70, 1800, 25)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (44, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N'Услуги школы\Китайский язык.jpg', 120, 1860, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (45, N'Подготовка к экзамену GMAT', N'Услуги школы\Подготовка к экзамену GMAT.png', 70, 1150, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (46, N'Подготовка к экзамену IELTS', N'Услуги школы\Подготовка к экзамену IELTS.jpg', 120, 1730, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (47, N'Подготовка к экзамену SAT', N'Услуги школы\Подготовка к экзамену SAT.png', 40, 1560, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (48, N'Урок в группе китайского языка для школьников', N'Услуги школы\Китайский язык.jpg', 50, 1180, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (49, N'Киноклуб английского языка для студентов', N'Услуги школы\киноклуб.jpg', 80, 980, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (50, N'Киноклуб португальского языка для студентов', N'Услуги школы\киноклуб.jpg', 30, 1170, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (51, N'Киноклуб китайского языка для детей', N'Услуги школы\киноклуб.jpg', 100, 1120, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (52, N'Урок в группе немецкого языка для школьников', N'Услуги школы\Немецкий язык.png', 30, 1570, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (53, N'Индивидуальный онлайн-урок испанского языка по Skype', N'Услуги школы\online lessons.jpg', 70, 1780, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (54, N'Урок в группе немецкого языка для взрослых', N'Услуги школы\Немецкий язык.png', 60, 930, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (55, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N'Услуги школы\Китайский язык.jpg', 90, 1480, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (56, N'Занятие с русскоязычным репетитором португальского языка', N'Услуги школы\Португальский язык.jpg', 50, 1970, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (57, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 110, 1470, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (58, N'Занятие с русскоязычным репетитором немецкого языка', N'Услуги школы\Немецкий язык.png', 30, 1420, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (59, N'Киноклуб английского языка для детей', N'Услуги школы\киноклуб.jpg', 40, 1280, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (60, N'Занятие с репетитором-носителем немецкого языка', N'Услуги школы\Немецкий язык.png', 120, 1120, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (61, N'Индивидуальный онлайн-урок китайского языка по Skype', N'Услуги школы\online lessons.jpg', 70, 1410, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (62, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'Услуги школы\Английский язык.jpg', 120, 1300, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (63, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N'Услуги школы\for company.jpg', 120, 1180, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (64, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 70, 1840, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (65, N'Урок в группе итальянского языка для школьников', N'Услуги школы\Итальянский язык.jpg', 100, 1410, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (66, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N'Услуги школы\Итальянский язык.jpg', 30, 1330, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (67, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N'Услуги школы\online lessons.jpg', 120, 1760, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (68, N'Занятие с русскоязычным репетитором французского языка', N'Услуги школы\Французский язык.jpg', 100, 1870, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (69, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'Услуги школы\Немецкий язык.png', 30, 990, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (70, N'Индивидуальный онлайн-урок английского языка по Skype', N'Услуги школы\online lessons.jpg', 100, 1880, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (71, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N'Услуги школы\Французский язык.jpg', 70, 1390, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (72, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 60, 2010, 25)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (73, N'Индивидуальный онлайн-урок французского языка по Skype', N'Услуги школы\online lessons.jpg', 120, 2010, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (74, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 80, 1210, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (75, N'Урок в группе французского языка для взрослых', N'Услуги школы\Французский язык.jpg', 120, 960, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (76, N'Подготовка к экзамену IELTS Speaking Club', N'Услуги школы\Подготовка к экзамену IELTS.jpg', 90, 1430, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (77, N'Киноклуб итальянского языка для детей', N'Услуги школы\киноклуб.jpg', 70, 1480, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (78, N'Урок в группе итальянского языка для студентов', N'Услуги школы\Итальянский язык.jpg', 110, 1020, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (79, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N'Услуги школы\Итальянский язык.jpg', 80, 1690, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (80, N'Киноклуб немецкого языка для детей', N'Услуги школы\киноклуб.jpg', 120, 1670, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (81, N'Киноклуб итальянского языка для взрослых', N'Услуги школы\киноклуб.jpg', 110, 1760, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (82, N'Киноклуб португальского языка для взрослых', N'Услуги школы\киноклуб.jpg', 30, 950, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (83, N'Киноклуб португальского языка для детей', N'Услуги школы\киноклуб.jpg', 90, 1710, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (84, N'Киноклуб французского языка для детей', N'Услуги школы\киноклуб.jpg', 90, 1600, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (85, N'Урок в группе японского языка для взрослых', N'Услуги школы\Японский язык.jpg', 80, 1420, 5)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (86, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 40, 1940, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (87, N'Занятие с русскоязычным репетитором итальянского языка', N'Услуги школы\Итальянский язык.jpg', 70, 1620, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (88, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N'Услуги школы\Английский язык.jpg', 30, 1910, 10)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (89, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N'Услуги школы\for company.jpg', 30, 1580, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (90, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 90, 1000, 25)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (91, N'Киноклуб немецкого языка для студентов', N'Услуги школы\киноклуб.jpg', 50, 1140, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (92, N'Занятие с репетитором-носителем французского языка', N'Услуги школы\Французский язык.jpg', 50, 2040, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (93, N'Урок в группе немецкого языка для студентов', N'Услуги школы\Немецкий язык.png', 70, 1240, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', N'Услуги школы\Китайский язык.jpg', 110, 940, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (95, N'Занятие с репетитором-носителем японского языка', N'Услуги школы\Японский язык.jpg', 50, 1100, 25)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (96, N'Урок в группе французского языка для студентов', N'Услуги школы\Французский язык.jpg', 30, 1910, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (97, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N'Услуги школы\for company.jpg', 110, 900, 0)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (98, N'Занятие с русскоязычным репетитором английского языка', N'Услуги школы\Английский язык.jpg', 90, 1950, 15)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (99, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N'Услуги школы\for company.jpg', 90, 1660, 0)
GO
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (100, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N'file:///C:/Users/Azarch/Desktop/ДЭ_4/Общие ресурсы/school_logo.png', 70, 1380, 20)
INSERT [dbo].[Service] ([Id], [Name], [Image], [Duration], [Cost], [Discount]) VALUES (102, N'22', N'file:///C:/Users/Azarch/Desktop/Безымянный.png', 22, 22, 22)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
ALTER TABLE [dbo].[AdditionalImage]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalImage_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdditionalImage] CHECK CONSTRAINT [FK_AdditionalImage_Service]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO

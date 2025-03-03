Create database [DoorSalon]
Go
USE [DoorSalon]
GO
/****** Object:  Table [dbo].[Basket]    Script Date: 04.06.2024 21:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdDoor] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Door]    Script Date: 04.06.2024 21:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Door](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[DoorTypeId] [int] NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[Dimensions] [nvarchar](25) NOT NULL,
	[DoorStyleId] [int] NOT NULL,
	[Weight] [float] NOT NULL,
	[MaterialId] [int] NOT NULL,
	[Photo] [nvarchar](110) NULL,
 CONSTRAINT [PK_Door] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoorStyle]    Script Date: 04.06.2024 21:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoorStyle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoorStyle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoorType]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoorType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoorType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderCreateDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[PickupPointID] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderGetCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDoor]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDoor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoorId] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Count] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[UserRoleId] [int] NOT NULL,
	[Phone] [varchar](16) NOT NULL,
	[Email] [varchar](25) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 04.06.2024 21:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Door] ON 

INSERT [dbo].[Door] ([Id], [Title], [Description], [QuantityInStock], [Price], [DoorTypeId], [ManufacturerId], [Dimensions], [DoorStyleId], [Weight], [MaterialId], [Photo]) VALUES (4, N'Модерн Дг-500 ива светлая глухая', N'Изготовлен по принципу «сэндвича» из высококачественного переклеенного массива сосны и MDF. Покрываются экошпоном немецкой фирмы.', 2, 9999, 1, 1, N'600х1900', 1, 25, 1, NULL)
INSERT [dbo].[Door] ([Id], [Title], [Description], [QuantityInStock], [Price], [DoorTypeId], [ManufacturerId], [Dimensions], [DoorStyleId], [Weight], [MaterialId], [Photo]) VALUES (5, N'Топ за свои деньги', N'Высококачественное изделие изготовленное на технологичном и современном заводе Lego, кароче топ за свои деньги', 2, 50, 2, 2, N'60x190', 1, 1, 1, N'Lego.png')
INSERT [dbo].[Door] ([Id], [Title], [Description], [QuantityInStock], [Price], [DoorTypeId], [ManufacturerId], [Dimensions], [DoorStyleId], [Weight], [MaterialId], [Photo]) VALUES (1006, N'Дверь Luxor 22 капучино стекло белое', N'Полотно рамочной конструкции. Основа полотна (царга), изготовлена из переклеенного массива древесины хвойных пород дерева и MDF. Толщина дверного полотна 36 мм.Дверные полотна устойчивы к воздействию солнечного света, хорошо переносят незначительные перепады температуры и влажности.', 25, 5555, 7, 1, N'600x1900', 1, 15, 4, N'door.jpeg')
SET IDENTITY_INSERT [dbo].[Door] OFF
GO
SET IDENTITY_INSERT [dbo].[DoorStyle] ON 

INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (1, N'Классика')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (2, N'Лофт')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (3, N'Модерн')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (4, N'Хай-тек')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (5, N'1')
SET IDENTITY_INSERT [dbo].[DoorStyle] OFF
GO
SET IDENTITY_INSERT [dbo].[DoorType] ON 

INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (1, N'Массив дерева')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (2, N'Шпон')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (3, N'ПВХ пленка')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (4, N'Ламинированные')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (5, N'Складные')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (7, N'Экошпон')
SET IDENTITY_INSERT [dbo].[DoorType] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([Id], [Title]) VALUES (1, N'Zetdoors')
INSERT [dbo].[Manufacturer] ([Id], [Title]) VALUES (2, N'Гелиодор')
INSERT [dbo].[Manufacturer] ([Id], [Title]) VALUES (3, N'Мир Дверей')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([Id], [Title]) VALUES (1, N'Дуб')
INSERT [dbo].[Material] ([Id], [Title]) VALUES (4, N'Тамбурат')
INSERT [dbo].[Material] ([Id], [Title]) VALUES (10, N'Береза')
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [OrderCreateDate], [OrderDeliveryDate], [PickupPointID], [UserId], [OrderGetCode]) VALUES (1, CAST(N'2024-06-04T17:02:25.527' AS DateTime), CAST(N'2024-06-14T17:02:25.527' AS DateTime), 2, 2, 559)
INSERT [dbo].[Order] ([Id], [OrderCreateDate], [OrderDeliveryDate], [PickupPointID], [UserId], [OrderGetCode]) VALUES (2, CAST(N'2024-06-04T17:21:30.903' AS DateTime), CAST(N'2024-06-14T17:21:30.903' AS DateTime), 2, 2, 464)
INSERT [dbo].[Order] ([Id], [OrderCreateDate], [OrderDeliveryDate], [PickupPointID], [UserId], [OrderGetCode]) VALUES (3, CAST(N'2024-06-04T17:23:33.583' AS DateTime), CAST(N'2024-06-14T17:23:33.583' AS DateTime), 3, 2, 279)
INSERT [dbo].[Order] ([Id], [OrderCreateDate], [OrderDeliveryDate], [PickupPointID], [UserId], [OrderGetCode]) VALUES (4, CAST(N'2024-06-04T17:25:08.960' AS DateTime), CAST(N'2024-06-14T17:25:08.960' AS DateTime), 1, 2, 562)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDoor] ON 

INSERT [dbo].[OrderDoor] ([Id], [DoorId], [OrderID], [Count]) VALUES (1, 5, 1, 1)
INSERT [dbo].[OrderDoor] ([Id], [DoorId], [OrderID], [Count]) VALUES (2, 1006, 1, 1)
INSERT [dbo].[OrderDoor] ([Id], [DoorId], [OrderID], [Count]) VALUES (3, 4, 2, 1)
INSERT [dbo].[OrderDoor] ([Id], [DoorId], [OrderID], [Count]) VALUES (4, 4, 3, 1)
INSERT [dbo].[OrderDoor] ([Id], [DoorId], [OrderID], [Count]) VALUES (5, 4, 4, 1)
SET IDENTITY_INSERT [dbo].[OrderDoor] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (1, N'344288, г. Дубна, ул. Чехова, 1')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (2, N'614164, г.Дубна,  ул. Степная, 30')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (3, N'394242, г. Дубна, ул. Коммунистическая, 43')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (4, N'660540, г. Дубна, ул. Солнечная, 25')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (5, N'125837, г. Дубна, ул. Шоссейная, 40')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (6, N'125703, г. Дубна, ул. Партизанская, 49')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (7, N'625283, г. Дубна, ул. Победы, 46')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (8, N'614611, г. Дубна, ул. Молодежная, 50')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (9, N'454311, г.Дубна, ул. Новая, 19')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (10, N'660007, г.Дубна, ул. Октябрьская, 19')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (11, N'603036, г. Дубна, ул. Садовая, 4')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (12, N'450983, г.Дубна, ул. Комсомольская, 26')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (13, N'394782, г. Дубна, ул. Чехова, 3')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (14, N'603002, г. Дубна, ул. Дзержинского, 28')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (15, N'450558, г. Дубна, ул. Набережная, 30')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (16, N'394060, г.Дубна, ул. Фрунзе, 43')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (17, N'410661, г. Дубна, ул. Школьная, 50')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (18, N'625590, г. Дубна, ул. Коммунистическая, 20')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (19, N'625683, г. Дубна, ул. 8 Марта')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (20, N'400562, г. Дубна, ул. Зеленая, 32')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (21, N'614510, г. Дубна, ул. Маяковского, 47')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (22, N'410542, г. Дубна, ул. Светлая, 46')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (23, N'620839, г. Дубна, ул. Цветочная, 8')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (24, N'443890, г. Дубна, ул. Коммунистическая, 1')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (25, N'603379, г. Дубна, ул. Спортивная, 46')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (26, N'603721, г. Дубна, ул. Гоголя, 41')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (27, N'410172, г. Дубна, ул. Северная, 13')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (28, N'420151, г. Дубна, ул. Вишневая, 32')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (29, N'125061, г. Дубна, ул. Подгорная, 8')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (30, N'630370, г. Дубна, ул. Шоссейная, 24')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (31, N'614753, г. Дубна, ул. Полевая, 35')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (32, N'426030, г. Дубна, ул. Маяковского, 44')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (33, N'450375, г. Дубна ул. Клубная, 44')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (34, N'625560, г. Дубна, ул. Некрасова, 12')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (35, N'630201, г. Дубна, ул. Комсомольская, 17')
INSERT [dbo].[PickupPoint] ([Id], [Address]) VALUES (36, N'190949, г. Дубна, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [UserRoleId], [Phone], [Email], [FirstName], [LastName], [Surname], [Photo]) VALUES (1, N'1', N'1', 1, N'123456789', N'admin@Mail.ru', N'Admin', N'Admin', NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [UserRoleId], [Phone], [Email], [FirstName], [LastName], [Surname], [Photo]) VALUES (2, N'2', N'2', 2, N'8800953535', N'Anastasia@mail.ru', N'Анастасия', N'Мамонова', NULL, N'Photo1.png')
INSERT [dbo].[User] ([Id], [Login], [Password], [UserRoleId], [Phone], [Email], [FirstName], [LastName], [Surname], [Photo]) VALUES (3, N'3', N'3', 2, N'98989898', N'@', N'Иван', N'Иванов', N'Иванович', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [Title]) VALUES (1, N'Администратор')
INSERT [dbo].[UserRole] ([Id], [Title]) VALUES (2, N'Пользователь')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Basket]  WITH CHECK ADD  CONSTRAINT [FK_Basket_Door] FOREIGN KEY([IdDoor])
REFERENCES [dbo].[Door] ([Id])
GO
ALTER TABLE [dbo].[Basket] CHECK CONSTRAINT [FK_Basket_Door]
GO
ALTER TABLE [dbo].[Basket]  WITH CHECK ADD  CONSTRAINT [FK_Basket_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Basket] CHECK CONSTRAINT [FK_Basket_User]
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_DoorStyle] FOREIGN KEY([DoorStyleId])
REFERENCES [dbo].[DoorStyle] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_DoorStyle]
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_DoorType] FOREIGN KEY([DoorTypeId])
REFERENCES [dbo].[DoorType] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_DoorType]
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_Manufacturer] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_Manufacturer]
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_Material]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([PickupPointID])
REFERENCES [dbo].[PickupPoint] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[OrderDoor]  WITH CHECK ADD FOREIGN KEY([DoorId])
REFERENCES [dbo].[Door] ([Id])
GO
ALTER TABLE [dbo].[OrderDoor]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[UserRole] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO

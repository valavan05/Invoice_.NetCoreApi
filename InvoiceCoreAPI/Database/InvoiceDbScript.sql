USE [invoice_test]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Users_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Users_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Users_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Users_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Users_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 21-06-2026 20:19:41 ******/
DROP PROCEDURE [dbo].[sp_Category_Delete]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__CreatedDa__13F1F5EB]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsDeleted__12FDD1B2]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsActive__1209AD79]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-06-2026 20:19:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 21-06-2026 20:19:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
DROP TABLE [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21-06-2026 20:19:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Description] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemmaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatCode] [varchar](5) NOT NULL,
	[ItemBarCode] [varchar](25) NOT NULL,
	[Itemcode] [varchar](10) NOT NULL,
	[Itemname] [varchar](100) NOT NULL,
	[Description] [varchar](250) NULL,
	[Uom] [varchar](3) NOT NULL,
	[Rate] [decimal](18, 2) NULL,
	[Minimumstock] [decimal](18, 2) NULL,
	[Maximumstock] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[Createdby] [varchar](100) NULL,
	[Createddate] [datetime] NULL,
	[Updatedby] [varchar](100) NULL,
	[Updateddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](200) NOT NULL,
	[PhoneNumber] [varchar](25) NOT NULL,
	[AlternatePhone] [varchar](25) NULL,
	[AddressLine1] [varchar](255) NOT NULL,
	[AddressLine2] [varchar](255) NULL,
	[City] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
	[ZipCode] [varchar](20) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[DateOfBirth] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'C001', N'Rice', N'All types of rice', 1, N'sa', CAST(N'2026-05-10T10:54:32.347' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-07T18:58:29.357' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'C002', N'Oil', N'Cooking oils and related products', 1, N'sa', CAST(N'2026-05-10T10:58:14.600' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-07T18:56:04.737' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'C003', N'Snacks', N'Ready-to-eat snack items', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'C004', N'Pulses', N'Dal, lentils and pulses', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-07T18:55:20.507' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'C005', N'Spices', N'Masala and spice powders', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'C006', N'Beverages', N'Drinks and juices', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'C007', N'Dairy', N'Milk and dairy products', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'C008', N'Bakery', N'Bread, cakes, and bakery items', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'C009', N'Frozen', N'Frozen food items', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-07T18:59:28.983' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'C010', N'PersonalCare', N'Personal care products', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'C011', N'Stationery Item', N'Pen and Book', 1, N'sa', CAST(N'2026-05-10T10:58:14.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'E105', N'valavan', N'ECE', 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-07T12:11:42.827' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'bjhhg', N'bbkjk', N'hk', 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-07T16:48:05.647' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] ON 
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (1, N'Soap', N'Bar001', N'Soap000001', N'Lux ', N'Bath Soap', N'NOS', CAST(85.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T12:44:17.597' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-26T17:19:38.980' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (2, N'Rice', N'Bar003', N'Rice00003', N'Aachi', N'Ponni', N'kg', CAST(85.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T15:31:08.550' AS DateTime), N'Valavan', CAST(N'2026-02-15T15:31:08.550' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (3, N'Soap', N'Bar002', N'Soap000002', N'Dove', N'Beauty Soap', N'No', CAST(120.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T17:09:40.210' AS DateTime), N'Valavan', CAST(N'2026-02-15T17:09:40.210' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (4, N'Oil', N'Bar002', N'Oil0003', N'Fortune', N'Cooking Oil', N'Lit', CAST(120.55 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T15:19:18.477' AS DateTime), N'Valavan', CAST(N'2026-02-15T15:19:18.477' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (13, N'S001', N'100001', N'ITM001', N'Bath Soap', N'Regular bathing soap', N'Nos', CAST(30.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:05:31.743' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (14, N'S001', N'100002', N'ITM002', N'Antibacterial Soap', N'Germ protection', N'Nos', CAST(35.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:07:48.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (15, N'S001', N'100003', N'ITM003', N'Herbal Soap', N'Natural ingredients', N'Nos', CAST(40.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:12.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (16, N'S001', N'100004', N'ITM004', N'Medicated Soap', N'Skin treatment', N'Nos', CAST(60.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:22.200' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-19T17:00:13.893' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (17, N'S001', N'100005', N'ITM005', N'Moisturizing Soap', N'Soft skin care', N'Nos', CAST(45.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:28.267' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (18, N'S001', N'100006', N'ITM006', N'Glycerin Soap', N'Gentle transparent soap', N'Nos', CAST(55.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:32.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (19, N'S001', N'100007', N'ITM007', N'Baby Soap', N'Mild baby care', N'Nos', CAST(60.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:39.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (20, N'S001', N'100008', N'ITM008', N'Handmade Soap', N'Organic handmade', N'Nos', CAST(70.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:48.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (21, N'S001', N'100009', N'ITM009', N'Beauty Soap', N'Skin glow', N'Nos', CAST(50.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:54.273' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (22, N'S001', N'100010', N'ITM010', N'Laundry Soap', N'Cloth washing', N'Nos', CAST(25.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:14:19.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (23, N'O001', N'100011', N'ITM011', N'Sunflower Oil', N'Cooking oil', N'Ltr', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:34.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (24, N'O001', N'100012', N'ITM012', N'Groundnut Oil', N'Peanut oil', N'Ltr', CAST(180.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:46.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (25, N'O001', N'100013', N'ITM013', N'Coconut Oil', N'Multipurpose oil', N'Ltr', CAST(200.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:52.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (26, N'O001', N'100014', N'ITM014', N'Mustard Oil', N'Strong flavor', N'Ltr', CAST(170.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:58.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (27, N'O001', N'100015', N'ITM015', N'Olive Oil', N'Healthy oil', N'Ltr', CAST(500.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:03.503' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (28, N'O001', N'100016', N'ITM016', N'Palm Oil', N'Affordable cooking oil', N'Ltr', CAST(140.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:08.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (29, N'O001', N'100017', N'ITM017', N'Gingelly Oil', N'Sesame oil', N'Ltr', CAST(220.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (30, N'O001', N'100018', N'ITM018', N'Rice Bran Oil', N'Heart-friendly oil', N'Ltr', CAST(160.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:18.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (31, N'O001', N'100019', N'ITM019', N'Vegetable Oil', N'Mixed oil', N'Ltr', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:28.637' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (32, N'O001', N'100020', N'ITM020', N'Vanaspati', N'Cooking fat', N'Kg', CAST(130.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:35.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (33, N'R001', N'100021', N'ITM021', N'Basmati Rice', N'Premium long grain', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:34.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (34, N'R001', N'100022', N'ITM022', N'Ponni Rice', N'South Indian rice', N'Kg', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:36.783' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (35, N'R001', N'100023', N'ITM023', N'Brown Rice', N'Healthy whole grain', N'Kg', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:38.730' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (36, N'R001', N'100024', N'ITM024', N'Raw Rice', N'Daily cooking', N'Kg', CAST(55.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:45.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (37, N'R001', N'100025', N'ITM025', N'Boiled Rice', N'Parboiled rice', N'Kg', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:48.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (38, N'R001', N'100026', N'ITM026', N'Sona Masoori Rice', N'Medium grain', N'Kg', CAST(65.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:50.347' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (39, N'R001', N'100027', N'ITM027', N'Idli Rice', N'Used for batter', N'Kg', CAST(58.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:52.720' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (40, N'R001', N'100028', N'ITM028', N'Jeera Rice', N'Aromatic rice', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:55.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (41, N'R001', N'100029', N'ITM029', N'Red Rice', N'Traditional rice', N'Kg', CAST(80.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:20:35.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (42, N'R001', N'100030', N'ITM030', N'Broken Rice', N'Budget rice', N'Kg', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:20:39.087' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (43, N'SN001', N'100031', N'ITM031', N'Biscuits', N'Sweet biscuits', N'Pac', CAST(20.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:45.470' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (44, N'SN001', N'100032', N'ITM032', N'Chips', N'Potato chips', N'Pac', CAST(30.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:49.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (45, N'SN001', N'100033', N'ITM033', N'Noodles', N'Instant noodles', N'Pac', CAST(25.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:51.970' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (46, N'SN001', N'100034', N'ITM034', N'Pasta', N'Italian snack', N'Pac', CAST(50.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:55.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (47, N'SN001', N'100035', N'ITM035', N'Popcorn', N'Ready to cook', N'Pac', CAST(40.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:59.523' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (48, N'SN001', N'100036', N'ITM036', N'Mixture', N'Spicy mix', N'Pac', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:04.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (49, N'SN001', N'100037', N'ITM037', N'Murukku', N'South Indian snack', N'Pac', CAST(70.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:07.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (50, N'SN001', N'100038', N'ITM038', N'Namkeen', N'Salted snack', N'Pac', CAST(50.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:10.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (51, N'SN001', N'100039', N'ITM039', N'Chocolate', N'Sweet snack', N'Pac', CAST(40.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (52, N'SN001', N'100040', N'ITM040', N'Cake', N'Bakery item', N'Pac', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:20.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (53, N'P001', N'100041', N'ITM041', N'Toor Dal', N'Yellow dal', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:19.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (54, N'P001', N'100042', N'ITM042', N'Urad Dal', N'Black gram', N'Kg', CAST(130.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:23.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (55, N'P001', N'100043', N'ITM043', N'Moong Dal', N'Green gram split', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:25.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (56, N'P001', N'100044', N'ITM044', N'Chana Dal', N'Bengal gram split', N'Kg', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:29.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (57, N'P001', N'100045', N'ITM045', N'Masoor Dal', N'Red lentils', N'Kg', CAST(100.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:31.357' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (58, N'P001', N'100046', N'ITM046', N'Green Gram', N'Whole moong', N'Kg', CAST(95.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:35.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (59, N'P001', N'100047', N'ITM047', N'Black Gram', N'Whole urad', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:37.670' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (60, N'P001', N'100048', N'ITM048', N'Chickpeas', N'White chana', N'Kg', CAST(85.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:39.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (61, N'P001', N'100049', N'ITM049', N'Kidney Beans', N'Rajma', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:43.483' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (65, N'P001', N'1050', N'ITM050', N'Horse Gram', N'Kollu', N'KGS', CAST(80.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-26T12:03:18.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CatCode], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (67, N'strin', N'string', N'string', N'string', N'string', N'str', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-26T15:58:33.897' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Revathi', N'Revathi@gmail.com', N'Revathi@04', N'Revathi', NULL, N'S', N'Revathi S', N'9791821707', NULL, N'Vinayagar Kovil St', N'Alathur', N'Villupurem', N'TamilNadu', N'605 301', N'India', CAST(N'1978-05-04' AS Date), 1, 0, N'Admin', CAST(N'2026-06-16T19:32:27.853' AS DateTime), N'sa', CAST(N'2026-06-16T19:33:39.097' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'valavan123', N'valavan@gmail.com', N'Password@123', N'Valavan', NULL, N'sankar', N'Valavan S', N'9876543210', N'9123456780', N'123 Anna Nagar', NULL, N'Chennai', N'Tamil Nadu', N'600001', N'India', CAST(N'2000-01-01' AS Date), 1, 0, N'Admin', CAST(N'2026-06-16T19:32:43.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'rahul', N'rahul0675@gmail.com', N'Rahulravid@123', N'Rahul', NULL, N'S', N'Rahul S', N'7463892285', N'8756687475', N'22/7 rpaakkam', NULL, N'Vpm', N'Tamil Nadu', N'600005', N'India', CAST(N'2004-04-03' AS Date), 1, 0, N'sa', CAST(N'2026-06-18T10:18:41.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Elanchezhiyan', N'elanchezhiyan@gmail.com', N'Elanchi@25', N'Elan', N'chezhiyan', N'Murugan', N'Elanchezhiyan', N'1245785521', N'7854125417', N'vinayagar kovil', N'street', N'chennai', N'tamilnadu', N'501405', N'America', CAST(N'2026-06-18' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T15:34:06.727' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T16:33:22.317' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'yogi', N'yogi@gmail.com', N'yogis0565', N'yogi', N'waran', N's', N'yogesh', N'9632587415', N'string', N'nungabakkam', N'string', N'chennai', N'tamilnadu', N'605601', N'india', CAST(N'2026-07-19' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T15:34:08.610' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T15:53:05.203' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'subash', N'subash@gmail.com', N'89367', N'subash', N'chandra', N'bose', N'subash e', N'5526232545', N'1234566541', N'naduveerapattu', N'cuddalore', N'cuddlore', N'tn', N'605602', N'india', CAST(N'2005-07-09' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T15:49:39.523' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'prem', N'prem@gmail.com', N'premraj254', N'prem', N'raj', N'M', N'Prem M', N'752104582', N'9791472584', N'murugan kovil st', N'koliyanur', N'madurai', N'mumbai', N'204502', N'UK', CAST(N'2005-04-05' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T16:39:59.083' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'mugilavan', N'mugilavan@gmail.com', N'mugilavan@123', N'mugilavan', N'ravi', N'R', N'Mugilavan R', N'9003792821', N'9685742536', N'mullai st', N'Alathur', N'thiruchi', N'delhi', N'602605', N'France', CAST(N'2006-07-30' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T20:39:51.610' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-18T20:40:41.667' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'Haribaba', N'haribab@gmail.com', N'hari5343', N'hari', N'baba', N'P', N'Haribaba', N'9003732938', N'string', N'madurai veeran st', N'string', N'chennai', N'tamil nadu', N'605632', N'india', CAST(N'2002-09-25' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-19T11:32:29.780' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-19T11:57:49.977' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'sasi', N'sasidharan@gmail.com', N'sasidharan123', N'sasi', N'dharan', N'S', N'Sasi', N'55475852452', N'string', N'amma kovil st', N'string', N'kovai', N'kolkatha', N'205304', N'germany', CAST(N'2026-06-19' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-19T12:02:13.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'akash', N'akash123@gmail.com', N'akash@321', N'akash', N'ak', N'A', N'Akash', N'8574123654', N'', N'akash st', N'', N'bengalaru', N'karnataka', N'365254', N'dubai', CAST(N'2003-03-12' AS Date), 1, 0, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-19T16:04:41.270' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-19T16:08:27.680' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'ArunRaj', N'arunraj01@gmail.com', N'Pass@123', N'Arun', N'K', N'Raj', N'Arun K Raj', N'9000000001', N'9111111111', N'12 Gandhi Street', N'Near Bus Stand', N'Chennai', N'Tamil Nadu', N'600001', N'India', CAST(N'1995-01-15' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'KarthikM', N'karthikm02@gmail.com', N'Pass@124', N'Karthik', N'S', N'Murugan', N'Karthik S Murugan', N'9000000002', N'9222222222', N'14 Anna Nagar', N'Opp School', N'Madurai', N'Tamil Nadu', N'625001', N'India', CAST(N'1994-02-20' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'SureshB', N'sureshb03@gmail.com', N'Pass@125', N'Suresh', N'R', N'Babu', N'Suresh R Babu', N'9000000003', N'9333333333', N'22 Lake View Road', N'Near Park', N'Trichy', N'Tamil Nadu', N'620001', N'India', CAST(N'1993-03-12' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, N'PradeepK', N'pradeepk04@gmail.com', N'Pass@126', N'Pradeep', N'V', N'Kumar', N'Pradeep V Kumar', N'9000000004', N'9444444444', N'18 Park Road', N'Near Temple', N'Salem', N'Tamil Nadu', N'636001', N'India', CAST(N'1992-04-18' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (22, N'VigneshR', N'vigneshr05@gmail.com', N'Pass@127', N'Vignesh', N'M', N'Ravi', N'Vignesh M Ravi', N'9000000005', N'9555555555', N'11 Temple Street', N'Near Market', N'Erode', N'Tamil Nadu', N'638001', N'India', CAST(N'1991-05-21' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'HarishN', N'harishn06@gmail.com', N'Pass@128', N'Harish', N'P', N'Nataraj', N'Harish P Nataraj', N'9000000006', N'9666666666', N'45 Market Road', N'Near Hospital', N'Coimbatore', N'Tamil Nadu', N'641001', N'India', CAST(N'1990-06-11' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, N'GokulP', N'gokulp07@gmail.com', N'Pass@129', N'Gokul', N'A', N'Prasad', N'Gokul A Prasad', N'9000000007', N'9777777777', N'8 River Street', N'Near Bridge', N'Tirunelveli', N'Tamil Nadu', N'627001', N'India', CAST(N'1989-07-19' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (25, N'ManojV', N'manojv08@gmail.com', N'Pass@130', N'Manoj', N'K', N'Vel', N'Manoj K Vel', N'9000000008', N'9888888888', N'27 Main Road', N'Near Mall', N'Vellore', N'Tamil Nadu', N'632001', N'India', CAST(N'1996-08-22' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (26, N'DineshS', N'dineshs09@gmail.com', N'Pass@131', N'Dinesh', N'R', N'Selvam', N'Dinesh R Selvam', N'9000000009', N'9999999991', N'33 Cross Street', N'Near Bank', N'Thanjavur', N'Tamil Nadu', N'613001', N'India', CAST(N'1997-09-09' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (27, N'RameshK', N'rameshk10@gmail.com', N'Pass@132', N'Ramesh', N'T', N'Kannan', N'Ramesh T Kannan', N'9000000010', N'9999999992', N'55 North Street', N'Near College', N'Karur', N'Tamil Nadu', N'639001', N'India', CAST(N'1998-10-10' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (28, N'NaveenT', N'naveent11@gmail.com', N'Pass@133', N'Naveen', N'J', N'Thiru', N'Naveen J Thiru', N'9000000011', N'9999999993', N'9 South Street', N'Near Library', N'Namakkal', N'Tamil Nadu', N'637001', N'India', CAST(N'1995-11-11' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (29, N'AshokW', N'ashokw12@gmail.com', N'Pass@134', N'Ashok', N'L', N'Wilson', N'Ashok L Wilson', N'9000000012', N'9999999994', N'16 Green Road', N'Near Bus Depot', N'Dharmapuri', N'Tamil Nadu', N'636701', N'India', CAST(N'1994-12-12' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (30, N'JeganM', N'jeganm13@gmail.com', N'Pass@135', N'Jegan', N'S', N'Mohan', N'Jegan S Mohan', N'9000000013', N'9999999995', N'7 School Street', N'Near Stadium', N'Cuddalore', N'Tamil Nadu', N'607001', N'India', CAST(N'1993-01-25' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (31, N'BalajiR', N'balajir14@gmail.com', N'Pass@136', N'Balaji', N'V', N'Raman', N'Balaji V Raman', N'9000000014', N'9999999996', N'21 College Road', N'Near Court', N'Nagapattinam', N'Tamil Nadu', N'611001', N'India', CAST(N'1992-02-14' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (32, N'SaravP', N'saravp15@gmail.com', N'Pass@137', N'Saravanan', N'K', N'Pandi', N'Saravanan K Pandi', N'9000000015', N'9999999997', N'40 Station Road', N'Near Railway Gate', N'Dindigul', N'Tamil Nadu', N'624001', N'India', CAST(N'1991-03-30' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (33, N'YogeshC', N'yogeshc16@gmail.com', N'Pass@138', N'Yogesh', N'R', N'Chandran', N'Yogesh R Chandran', N'9000000016', N'9999999998', N'13 Hill View', N'Near Water Tank', N'Kanyakumari', N'Tamil Nadu', N'629001', N'India', CAST(N'1990-04-05' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (34, N'MadhanR', N'madhanr17@gmail.com', N'Pass@139', N'Madhan', N'P', N'Raj', N'Madhan P Raj', N'9000000017', N'9999999999', N'29 Beach Road', N'Near Port', N'Tuticorin', N'Tamil Nadu', N'628001', N'India', CAST(N'1989-05-16' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (35, N'SenthilG', N'senthilg18@gmail.com', N'Pass@140', N'Senthil', N'A', N'Ganesh', N'Senthil A Ganesh', N'9000000018', N'8888888881', N'24 Flower Street', N'Near Petrol Bunk', N'Virudhunagar', N'Tamil Nadu', N'626001', N'India', CAST(N'1996-06-26' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (36, N'VinothJ', N'vinothj19@gmail.com', N'Pass@141', N'Vinoth', N'M', N'Jagan', N'Vinoth M Jagan', N'9000000019', N'8888888882', N'31 King Road', N'Near Municipality', N'Sivagangai', N'Tamil Nadu', N'630561', N'India', CAST(N'1997-07-17' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (37, N'PrakashD', N'prakashd20@gmail.com', N'Pass@142', N'Prakash', N'S', N'Durai', N'Prakash S Durai', N'9000000020', N'8888888883', N'50 Queen Street', N'Near Church', N'Pudukkottai', N'Tamil Nadu', N'622001', N'India', CAST(N'1998-08-28' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T16:17:16.137' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Delete]
(
    @Id INT
)
AS
BEGIN
    DELETE FROM Category
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Category_GetAll]
AS
BEGIN
    SELECT
        Id,
        Code,
        Name,
        Description,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM Category
    ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetById]
(
    @Id INT
)
AS
BEGIN
    SELECT
        Id,
        Code,
        Name,
        Description,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM Category
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetPaged]

    @Code        VARCHAR(5) = NULL,
    @Name        VARCHAR(25) = NULL,
    @IsActive    BIT = NULL,
    @PageNumber  INT = 1,
    @PageSize    INT = 10

AS
BEGIN
    SET NOCOUNT ON;

    IF (@PageNumber <= 0) SET @PageNumber = 1;
    IF (@PageSize <= 0) SET @PageSize = 10;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;

    SELECT

        Id,
        Code,
        Name,
        Description,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate,

        COUNT(*) OVER() AS TotalRecords

    FROM Category

    WHERE

        (@Code IS NULL OR Code LIKE '%' + @Code + '%')

        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')

        AND (@IsActive IS NULL OR IsActive = @IsActive)

    ORDER BY Id ASC
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;

    SELECT

        COUNT(1) AS TotalRecords

    FROM Category

    WHERE

        (@Code IS NULL OR Code LIKE '%' + @Code + '%')

        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')

        AND (@IsActive IS NULL OR IsActive = @IsActive);

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Insert]
(
    @Code VARCHAR(5),
    @Name VARCHAR(25),
    @Description VARCHAR(100),
    @IsActive BIT
    
)
AS
BEGIN
    INSERT INTO Category
    (
        Code,
        Name,
        Description,
        IsActive,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @Code,
        @Name,
        @Description,
        @IsActive,
        SYSTEM_USER,
        GETDATE()
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Update]
(
    @Id INT,
    @Code VARCHAR(5),
    @Name VARCHAR(25),
    @Description VARCHAR(100),
    @IsActive BIT
    
)
AS
BEGIN
    UPDATE Category
    SET
        Code = @Code,
        Name = @Name,
        Description = @Description,
        IsActive = @IsActive,
        UpdatedBy = SYSTEM_USER,
        UpdatedDate = GETDATE()
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Delete]
(
    @Id INT
)
AS
BEGIN
    DELETE FROM Itemmaster
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetAll]
AS
BEGIN
    SELECT Id,  CatCode, ItemBarCode, Itemcode, Itemname,
        Description, Uom, Rate,
        Minimumstock, Maximumstock,
        IsActive, Createdby, Createddate,
        Updatedby, Updateddate FROM Itemmaster
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetById]
(
    @Id INT
)
AS
BEGIN
    SELECT Id, CatCode, ItemBarCode, Itemcode, Itemname,
        Description, Uom, Rate,
        Minimumstock, Maximumstock,
        IsActive, Createdby, Createddate,
        Updatedby, Updateddate FROM Itemmaster
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged]

	@CatCode	VARCHAR(5) = NULL,

	@ItemName	VARCHAR(100) = NULL,

	@Uom		VARCHAR(3) = NULL,

    @PageNumber INT = 1,

    @PageSize   INT = 10

AS

BEGIN

    SET NOCOUNT ON;
 
    -- Default paging

    IF (@PageNumber <= 0) SET @PageNumber = 1;

    IF (@PageSize <= 0) SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
 
    -- Main data

	SELECT 

		Id,

		CatCode,

		ItemBarCode,

		Itemcode,

		Itemname,

		Description,

		Uom,

		Rate,

		Minimumstock,

		Maximumstock,

		IsActive,

		Createdby,

		Createddate,

		Updatedby,

		Updateddate,

		COUNT(*) OVER() AS TotalRecords

	FROM dbo.Itemmaster

	WHERE 

		(@CatCode IS NULL OR CatCode LIKE '%' + @CatCode + '%')

		AND (@ItemName IS NULL OR ItemName LIKE '%' + @ItemName + '%')

		AND (@Uom IS NULL OR Uom LIKE '%' + @Uom + '%')

	ORDER BY Id ASC

	OFFSET @Offset ROWS

	FETCH NEXT @PageSize ROWS ONLY;
 
	 -- Total count (for pagination UI)

SELECT 

     COUNT(1) AS TotalRecords

FROM dbo.Itemmaster

WHERE 

     (@CatCode IS NULL OR CatCode LIKE '%' + @CatCode + '%')

     AND (@ItemName IS NULL OR ItemName LIKE  '%'+@ItemName+'%')

     AND (@Uom IS NULL OR Uom LIKE '%'+@Uom+'%');

     
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Insert]
(
    @CatCode VARCHAR(5),
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250),
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @Minimumstock DECIMAL(18,2),
    @Maximumstock DECIMAL(18,2),
    @IsActive BIT
    
)
AS
BEGIN
    INSERT INTO Itemmaster
    (
        CatCode, ItemBarCode, Itemcode, Itemname,
        Description, Uom, Rate,
        Minimumstock, Maximumstock,
        IsActive, Createdby, Createddate,
        Updatedby, Updateddate
    )
    VALUES
    (
        @CatCode, @ItemBarCode, @Itemcode, @Itemname,
        @Description, @Uom, @Rate,
        @Minimumstock, @Maximumstock,
        @IsActive, SYSTEM_USER, GETDATE(),
        NULL, NULL
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Update]
(
    @Id INT,
    @CatCode VARCHAR(5),
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250),
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @Minimumstock DECIMAL(18,2),
    @Maximumstock DECIMAL(18,2),
    @IsActive BIT
    
)
AS
BEGIN
    UPDATE Itemmaster
    SET
        
        CatCode = @CatCode,
        ItemBarCode = @ItemBarCode,
        Itemcode = @Itemcode,
        Itemname = @Itemname,
        Description = @Description,
        Uom = @Uom,
        Rate = @Rate,
        Minimumstock = @Minimumstock,
        Maximumstock = @Maximumstock,
        IsActive = @IsActive,
        Updatedby = SYSTEM_USER,
        Updateddate = GETDATE()
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Delete]
(
@Id INT
)
AS
BEGIN

DELETE FROM Users

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_Users_GetAll]

AS 
BEGIN

SELECT Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM Users

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetById]
(
@Id INT
)
AS
BEGIN

SELECT Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM Users

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetPaged]

@UserName VARCHAR(100) = NULL,
@FirstName VARCHAR(100) = NULL,
@LastName varchar(100) = null,
@PhoneNumber varchar(25) = null,
@City VARCHAR(100) = NULL,
@DateOfBirth date = null,
@IsActive BIT = NULL,
@PageNumber INT =1,
@pageSize INT =10

AS
BEGIN
	SET NOCOUNT ON;

	IF (@PageNumber <=0) SET @PageNumber =1;
	IF (@pageSize <=0) SET @pageSize =10;

	DECLARE @offset INT = ( @pageNumber -1) * @PageSize;

	SELECT
Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,

COUNT(*) OVER() AS TotalRecords

FROM Users

WHERE 

(@UserName IS NULL OR Username LIKE '%' + @UserName +'%')
AND (@FirstName IS NULL OR FirstName LIKE '%' + @FirstName +'%')
AND(@LastName IS NULL OR LastName LIKE '%' + @LastName +'%')
AND(@PhoneNumber IS NULL OR PhoneNumber LIKE '%' + @PhoneNumber +'%')
AND(@City IS NULL OR City LIKE '%' + @City + '%')
AND(@DateOfBirth IS NULL OR DateOfBirth = @DateOfBirth)
AND (@IsActive IS NULL OR IsActive =@IsActive)

ORDER BY Id ASC
OFFSET @offset ROWS

FETCH NEXT @PageSize ROWS ONLY;

SELECT

COUNT (1) AS TotalRecords

FROM Users

WHERE 

(@UserName IS NULL OR Username LIKE '%' + @UserName +'%')
AND (@FirstName IS NULL OR FirstName LIKE '%' + @FirstName +'%')
AND(@LastName IS NULL OR LastName LIKE '%' + @LastName +'%')
AND(@PhoneNumber IS NULL OR PhoneNumber LIKE '%' + @PhoneNumber +'%')
AND(@City IS NULL OR City LIKE '%' + @City + '%')
AND(@DateOfBirth IS NULL OR DateOfBirth = @DateOfBirth)
AND (@IsActive IS NULL OR IsActive =@IsActive)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Users_Insert]
(
@UserName varchar(100),
@Email varchar(255),
@Password varchar(500),
@FirstName varchar(100),
@MiddleName varchar(100) = NULL,
@LastName varchar(100),
@DisplayName varchar(200),
@PhoneNumber varchar(25),
@AlternatePhone varchar(25),
@AddressLine1 varchar(255),
@AddressLine2 varchar(255)= NULL,
@City varchar(100),
@State varchar(100),
@ZipCode varchar(20),
@Country varchar(100),
@DateOfBirth Date

)

AS 
	BEGIN
	SET NOCOUNT ON;

	INSERT INTO Users
	(
	UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
	State,ZipCode,Country,DateOfBirth,CreatedBy,UpdatedBy,UpdatedDate
	)

	VALUES
	(
	@UserName,@Email,@Password,@FirstName,@MiddleName,@LastName,@DisplayName,@PhoneNumber,@AlternatePhone,@AddressLine1,@AddressLine2,@City,
	@State,@ZipCode,@Country,@DateOfBirth,SYSTEM_USER,NULL,NULL
	)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 21-06-2026 20:19:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Users_Update]
(
@Id int,
@UserName varchar(100),
@Email varchar(255),
@Password varchar(500),
@FirstName varchar(100),
@MiddleName varchar(100) = NULL,
@LastName varchar(100),
@DisplayName varchar(200),
@PhoneNumber varchar(25),
@AlternatePhone varchar(25),
@AddressLine1 varchar(255),
@AddressLine2 varchar(255)= NULL,
@City varchar(100),
@State varchar(100),
@ZipCode varchar(20),
@Country varchar(100),
@DateOfBirth Date
)
AS 
	BEGIN
	Update Users

	SET
	UserName =@UserName,
	Email=@Email,
	Password=@Password,
	FirstName=@FirstName,
	MiddleName=@MiddleName,
	LastName=@LastName,
	DisplayName=@DisplayName,
	PhoneNumber=@PhoneNumber,
	AlternatePhone=@AlternatePhone,
	AddressLine1=@AddressLine1,
	AddressLine2=@AddressLine2,
	City=@City,
	State=@State,
	ZipCode=@ZipCode,
	Country=@Country,
	DateOfBirth=@DateOfBirth,
	UpdatedBy=SYSTEM_USER,
	UpdatedDate=GETDATE()
WHERE Id=@Id

END
GO

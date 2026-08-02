USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 02-08-2026 20:01:57 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 02-08-2026 20:01:57 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 02-08-2026 20:01:57 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 02-08-2026 20:01:57 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 02-08-2026 20:01:57 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 02-08-2026 20:01:57 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [FK_Itemmaster_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [DF_Itemmaster_CategoryId]
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 02-08-2026 20:01:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ_Category_Code]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 02-08-2026 20:01:57 ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-08-2026 20:01:57 ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-08-2026 20:01:57 ******/
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
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 02-08-2026 20:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemmaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
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
 CONSTRAINT [PK__Itemmast__3214EC07A97FB849] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'RI001', N'Rice', N'All types of rice', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'VE001', N'Vegitables', N'All types of vegitables', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'SN001', N'Snacks', N'All types of snacks', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'OI001', N'Oil', N'All types of oils', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SO001', N'Soap', N'All types of soaps', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'GN001', N'General', N'General Stores', 1, N'sa', CAST(N'2026-08-02T18:09:43.597' AS DateTime), N'sa', CAST(N'2026-08-02T18:09:43.597' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'PL001', N'Pulses', N'Pulses Stores', 1, N'sa', CAST(N'2026-08-02T19:47:22.210' AS DateTime), N'sa', CAST(N'2026-08-02T19:47:22.210' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] ON 
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (1, 5, N'Bar001', N'Soap000001', N'Lux ', N'Bath Soap', N'NOS', CAST(85.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T12:44:17.597' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-26T17:19:38.980' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (2, 1, N'Bar003', N'Rice00003', N'Aachi', N'Ponni', N'kg', CAST(85.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T15:31:08.550' AS DateTime), N'Valavan', CAST(N'2026-02-15T15:31:08.550' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (3, 5, N'Bar002', N'Soap000002', N'Dove', N'Beauty Soap', N'No', CAST(120.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T17:09:40.210' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-07-30T16:44:18.780' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (4, 4, N'Bar002', N'Oil0003', N'Fortune', N'Cooking Oil', N'Lit', CAST(120.55 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T15:19:18.477' AS DateTime), N'Valavan', CAST(N'2026-02-15T15:19:18.477' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (13, 5, N'100001', N'ITM001', N'Bath Soap', N'Regular bathing soap', N'Nos', CAST(30.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:05:31.743' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (14, 5, N'100002', N'ITM002', N'Antibacterial Soap', N'Germ protection', N'Nos', CAST(35.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:07:48.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (15, 5, N'100003', N'ITM003', N'Herbal Soap', N'Natural ingredients', N'Nos', CAST(40.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:12.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (16, 5, N'100004', N'ITM004', N'Medicated Soap', N'Skin treatment', N'Nos', CAST(60.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:22.200' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-19T17:00:13.893' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (17, 5, N'100005', N'ITM005', N'Moisturizing Soap', N'Soft skin care', N'Nos', CAST(45.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:28.267' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (18, 5, N'100006', N'ITM006', N'Glycerin Soap', N'Gentle transparent soap', N'Nos', CAST(55.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:32.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (19, 5, N'100007', N'ITM007', N'Baby Soap', N'Mild baby care', N'Nos', CAST(60.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:39.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (20, 5, N'100008', N'ITM008', N'Handmade Soap', N'Organic handmade', N'Nos', CAST(70.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:48.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (21, 5, N'100009', N'ITM009', N'Beauty Soap', N'Skin glow', N'Nos', CAST(50.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:54.273' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (22, 5, N'100010', N'ITM010', N'Laundry Soap', N'Cloth washing', N'Nos', CAST(25.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:14:19.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (23, 4, N'100011', N'ITM011', N'Sunflower Oil', N'Cooking oil', N'Ltr', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:34.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (24, 4, N'100012', N'ITM012', N'Groundnut Oil', N'Peanut oil', N'Ltr', CAST(180.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:46.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (25, 4, N'100013', N'ITM013', N'Coconut Oil', N'Multipurpose oil', N'Ltr', CAST(200.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:52.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (26, 4, N'100014', N'ITM014', N'Mustard Oil', N'Strong flavor', N'Ltr', CAST(170.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:58.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (27, 4, N'100015', N'ITM015', N'Olive Oil', N'Healthy oil', N'Ltr', CAST(500.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:03.503' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (28, 4, N'100016', N'ITM016', N'Palm Oil', N'Affordable cooking oil', N'Ltr', CAST(140.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:08.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (29, 4, N'100017', N'ITM017', N'Gingelly Oil', N'Sesame oil', N'Ltr', CAST(220.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (30, 4, N'100018', N'ITM018', N'Rice Bran Oil', N'Heart-friendly oil', N'Ltr', CAST(160.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:18.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (31, 4, N'100019', N'ITM019', N'Vegetable Oil', N'Mixed oil', N'Ltr', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:28.637' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (32, 4, N'100020', N'ITM020', N'Vanaspati', N'Cooking fat', N'Kg', CAST(130.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:35.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (33, 4, N'100021', N'ITM021', N'Basmati Rice', N'Premium long grain', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:34.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (34, 4, N'100022', N'ITM022', N'Ponni Rice', N'South Indian rice', N'Kg', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:36.783' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (35, 4, N'100023', N'ITM023', N'Brown Rice', N'Healthy whole grain', N'Kg', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:38.730' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (36, 4, N'100024', N'ITM024', N'Raw Rice', N'Daily cooking', N'Kg', CAST(55.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:45.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (37, 4, N'100025', N'ITM025', N'Boiled Rice', N'Parboiled rice', N'Kg', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:48.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (38, 4, N'100026', N'ITM026', N'Sona Masoori Rice', N'Medium grain', N'Kg', CAST(65.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:50.347' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (39, 4, N'100027', N'ITM027', N'Idli Rice', N'Used for batter', N'Kg', CAST(58.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:52.720' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (40, 4, N'100028', N'ITM028', N'Jeera Rice', N'Aromatic rice', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:55.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (41, 4, N'100029', N'ITM029', N'Red Rice', N'Traditional rice', N'Kg', CAST(80.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:20:35.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (42, 4, N'100030', N'ITM030', N'Broken Rice', N'Budget rice', N'Kg', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:20:39.087' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (43, 3, N'100031', N'ITM031', N'Biscuits', N'Sweet biscuits', N'Pac', CAST(20.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:45.470' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (44, 3, N'100032', N'ITM032', N'Chips', N'Potato chips', N'Pac', CAST(30.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:49.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (45, 3, N'100033', N'ITM033', N'Noodles', N'Instant noodles', N'Pac', CAST(25.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:51.970' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (46, 3, N'100034', N'ITM034', N'Pasta', N'Italian snack', N'Pac', CAST(50.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:55.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (47, 3, N'100035', N'ITM035', N'Popcorn', N'Ready to cook', N'Pac', CAST(40.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:59.523' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (48, 3, N'100036', N'ITM036', N'Mixture', N'Spicy mix', N'Pac', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:04.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (49, 3, N'100037', N'ITM037', N'Murukku', N'South Indian snack', N'Pac', CAST(70.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:07.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (50, 3, N'100038', N'ITM038', N'Namkeen', N'Salted snack', N'Pac', CAST(50.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:10.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (51, 3, N'100039', N'ITM039', N'Chocolate', N'Sweet snack', N'Pac', CAST(40.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (52, 1, N'100040', N'ITM040', N'Cake', N'Bakery item', N'Pac', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:20.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (53, 7, N'100041', N'ITM041', N'Toor Dal', N'Yellow dal', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:19.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (54, 7, N'100042', N'ITM042', N'Urad Dal', N'Black gram', N'Kg', CAST(130.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:23.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (55, 7, N'100043', N'ITM043', N'Moong Dal', N'Green gram split', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:25.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (56, 7, N'100044', N'ITM044', N'Chana Dal', N'Bengal gram split', N'Kg', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:29.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (57, 7, N'100045', N'ITM045', N'Masoor Dal', N'Red lentils', N'Kg', CAST(100.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:31.357' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (58, 7, N'100046', N'ITM046', N'Green Gram', N'Whole moong', N'Kg', CAST(95.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:35.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (59, 7, N'100047', N'ITM047', N'Black Gram', N'Whole urad', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:37.670' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (60, 7, N'100048', N'ITM048', N'Chickpeas', N'White chana', N'Kg', CAST(85.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:39.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (61, 7, N'100049', N'ITM049', N'Kidney Beans', N'Rajma', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:43.483' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (65, 7, N'1050', N'ITM050', N'Horse Gram', N'Kollu', N'KGS', CAST(80.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-26T12:03:18.780' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 02-08-2026 20:01:57 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Itemmaster] ADD  CONSTRAINT [DF_Itemmaster_CategoryId]  DEFAULT ((1)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 02-08-2026 20:01:57 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 02-08-2026 20:01:57 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 02-08-2026 20:01:57 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 02-08-2026 20:01:57 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 02-08-2026 20:01:57 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 02-08-2026 20:01:57 ******/
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

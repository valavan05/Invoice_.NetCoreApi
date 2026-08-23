USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Update]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Insert]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Delete]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_UpdateLastLogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByUserName]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByEmail]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Update]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Delete]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Cusomer_Delete]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Cusomer_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 23-08-2026 21:01:44 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [FK_Itemmaster_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__CreatedD__6BAEFA67]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsDelete__6ABAD62E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsActive__69C6B1F5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__CreatedDa__13F1F5EB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsDeleted__12FDD1B2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsActive__1209AD79]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [DF_Itemmaster_CategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__Create__59904A2C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsDele__589C25F3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsActi__57A801BA]
GO
/****** Object:  Index [UQ__Vendor__10C18F5C3F52C3E5]    Script Date: 23-08-2026 21:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [UQ__Vendor__10C18F5C3F52C3E5]
GO
/****** Object:  Index [UQ__Customer__06678521F1516424]    Script Date: 23-08-2026 21:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [UQ__Customer__06678521F1516424]
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 23-08-2026 21:01:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ_Category_Code]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 23-08-2026 21:01:44 ******/
DROP TABLE IF EXISTS [dbo].[Vendor]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23-08-2026 21:01:44 ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 23-08-2026 21:01:44 ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23-08-2026 21:01:44 ******/
DROP TABLE IF EXISTS [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-08-2026 21:01:44 ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](20) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC07137C5DB3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[PasswordHash] [varchar](500) NOT NULL,
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
	[LastLoginDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Users__3214EC07A3E8F13E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorCode] [varchar](20) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Vendor__3214EC07121428A6] PRIMARY KEY CLUSTERED 
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
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'CUST001', N'ABC Traders', N'Ramesh Kumar', N'9876543210', N'ramesh@abctraders.com', N'12 Gandhi Road', N'Near Bus Stand', N'Chennai', N'Tamil Nadu', N'India', N'600001', N'600001', 1, 1, N'sa', CAST(N'2026-06-23T20:37:53.650' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-28T17:08:21.137' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'CUST002', N'Sri Lakshmi Stores', N'Suresh', N'9876543211', N'suresh@lakshmistores.com', N'45 Market Street', N'Opp Railway Station', N'Coimbatore', N'Tamil Nadu', N'India', N'641001', N'641001', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.550' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-25T15:52:51.923' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'CUST003', N'Green Foods', N'Manoj', N'9876543212', N'manoj@greenfoods.com', N'78 Main Road', N'Near Temple', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'33ABCDE1234F1Z7', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'CUST004', N'Sun Enterprises', N'Karthik', N'9876543213', N'karthik@sunenterprises.com', N'10 Anna Salai', N'Near Signal', N'Salem', N'Tamil Nadu', N'India', N'636001', N'33ABCDE1234F1Z8', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.587' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'CUST005', N'Royal Distributors', N'Prakash', N'9876543214', N'prakash@royaldist.com', N'22 Bazaar Road', N'Near Post Office', N'Erode', N'Tamil Nadu', N'India', N'638001', N'33ABCDE1234F1Z9', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.587' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'CUST006', N'Vijaya Agencies', N'Arun', N'9876543215', N'arun@vijayaagencies.com', N'55 Cross Street', N'Near School', N'Trichy', N'Tamil Nadu', N'India', N'620001', N'33ABCDE1234F1Y1', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.587' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'CUST007', N'Modern Mart', N'Dinesh', N'9876543216', N'dinesh@modernmart.com', N'67 Lake View', N'Near Park', N'Vellore', N'Tamil Nadu', N'India', N'632001', N'33ABCDE1234F1Y2', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.587' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'CUST008', N'Fresh Choice', N'Vignesh', N'9876543217', N'vignesh@freshchoice.com', N'89 Ring Road', N'Near Hospital', N'Tirunelveli', N'Tamil Nadu', N'India', N'627001', N'33ABCDE1234F1Y3', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'CUST009', N'Shree Exports', N'Balaji', N'9876543218', N'balaji@shreeexports.com', N'14 Industrial Estate', N'Phase 1', N'Hosur', N'Tamil Nadu', N'India', N'635109', N'33ABCDE1234F1Y4', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'CUST010', N'Elite Retail', N'yogesh', N'9994298521', N'yogi@eliteretail.com', N'105 MG Road', N'Shopping Mall', N'Bengaluru', N'Karnataka', N'India', N'560001', N'560001', 1, 1, N'sa', CAST(N'2026-06-23T20:40:01.590' AS DateTime), N'sa', CAST(N'2026-06-23T20:44:37.903' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'v001', N'Valavan S', N'Valavan S', N'9791821707', N'valavansangar@gmail.com', N'Vinayakar Kovil Street', N'Alathur', N'Villupuram', N'Tamil Nadu', N'India', N'605301', N'605301', 1, 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-25T15:30:07.397' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-28T16:48:43.320' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
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
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [Itemcode], [Itemname], [Description], [Uom], [Rate], [Minimumstock], [Maximumstock], [IsActive], [Createdby], [Createddate], [Updatedby], [Updateddate]) VALUES (69, 4, N'v2', N'v01', N'van', N'vn s', N'kg', CAST(8.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-08-16T14:13:09.383' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-08-16T14:13:29.577' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Valavan', N'valavansangargmail.com', N'AQAAAAIAAYagAAAAEDtKtGjzxVhTYbaCgtZSpAhe6GfLxuny/rNGp9FJualCwnWk/0xK/FsyaKyn88xvnw==', N'Valavan', N'', N'S', N'Valavan S', N'9791821707', N'9791473707', N'Vinayagar Kovil St', N'Alathur', N'Villupuram', N'Tamil Nadu', N'605 302', N'India', CAST(N'2005-04-05' AS Date), 1, 0, CAST(N'2026-08-23T14:48:31.380' AS DateTime), N'Valavan S', CAST(N'2026-08-23T11:44:08.987' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Testuser', N'ejve@gmail.com', N'AQAAAAIAAYagAAAAEAJcU8avcxnkPe2YhCYxevt/fF6UoUP1Fe94d6gMZOGdi5xVqtbw8RvxQvbIhohOPw==', N'nin', N'kj', N'els', N'viea', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, CAST(N'2026-08-23T13:57:02.230' AS DateTime), N'User', CAST(N'2026-08-23T12:27:32.567' AS DateTime), N'string', CAST(N'2026-08-23T14:30:14.530' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'string', N'string', N'AQAAAAIAAYagAAAAEI+yjYauEgtHKtAmFzsOWN/LRGzBFYpxD7RQVGwok2HwcB/ibTL/KYJVYeOPMjsDuw==', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, NULL, N'string', CAST(N'2026-08-23T14:35:11.713' AS DateTime), N'null', CAST(N'2026-08-23T14:35:59.280' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'vjvjhd', N'nkjse', N'AQAAAAIAAYagAAAAEEkRZKO9e0p7yhuLRY33mF19iEzdLME9hQhed6E30JjkJz42CbSU3V29qlyX4Jm6dA==', N'string', N'vnels', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, NULL, N'string', CAST(N'2026-08-23T15:15:20.913' AS DateTime), N'null', CAST(N'2026-08-23T15:15:53.003' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendor] ON 
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'VEND001', N'Aavin Dairy', N'Murugan', N'9876543301', N'murugan@aavin.com', N'12 Milk Colony', N'Near Dairy Plant', N'Chennai', N'Tamil Nadu', N'India', N'600010', N'33AAACA1234A1Z5', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.443' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'VEND003', N'Sun Oil Suppliers', N'Ravi', N'9876543303', N'ravi@sunoil.com', N'78 Market Road', N'Near Bus Stand', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'33CCCCA3456C1Z7', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'VEND004', N'Fresh Farm Foods', N'Sathish', N'9876543304', N'sathish@freshfarm.com', N'10 Farmers Street', N'Near Temple', N'Salem', N'Tamil Nadu', N'India', N'636001', N'33DDDCA4567D1Z8', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'VEND005', N'Golden Rice Traders', N'Prakash', N'9876543305', N'prakash@goldenrice.com', N'22 Rice Market', N'Godown Area', N'Erode', N'Tamil Nadu', N'India', N'638001', N'33EEECA5678E1Z9', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.447' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'VEND006', N'Elite Beverages', N'Arun', N'9876543306', N'arun@elitebev.com', N'55 Beverage Park', N'Near Highway', N'Trichy', N'Tamil Nadu', N'India', N'620001', N'33FFFCA6789F1Y1', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.450' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'VEND007', N'Modern Snacks Pvt Ltd', N'Dinesh', N'9876543307', N'dinesh@modernsnacks.com', N'67 Food Street', N'Industrial Estate', N'Vellore', N'Tamil Nadu', N'India', N'632001', N'33GGGCA7890G1Y2', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.450' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'VEND008', N'Shree Pulses Agency', N'Balaji', N'9876543308', N'balaji@shreepulses.com', N'89 Wholesale Market', N'Near Railway Station', N'Tirunelveli', N'Tamil Nadu', N'India', N'627001', N'33HHHCA8901H1Y3', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.450' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'VEND009', N'Royal Consumer Goods', N'Hari', N'9876543309', N'hari@royalcg.com', N'14 Commercial Complex', N'Phase 2', N'Hosur', N'Tamil Nadu', N'India', N'635109', N'33IIICA9012I1Y4', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.450' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'VEND011', N'Prime Agro Suppliers', N'Rajesh', N'9876543321', N'rajesh@primeagro.com', N'25 Gandhi Nagar', N'Near Vegetable Market', N'Namakkal', N'Tamil Nadu', N'India', N'637001', N'637001', 1, 1, N'sa', CAST(N'2026-06-23T21:21:54.450' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-06-28T17:39:09.377' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Vendor] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 23-08-2026 21:01:44 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__06678521F1516424]    Script Date: 23-08-2026 21:01:44 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [UQ__Customer__06678521F1516424] UNIQUE NONCLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Vendor__10C18F5C3F52C3E5]    Script Date: 23-08-2026 21:01:44 ******/
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [UQ__Vendor__10C18F5C3F52C3E5] UNIQUE NONCLUSTERED 
(
	[VendorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsActi__57A801BA]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__589C25F3]  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__59904A2C]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster] ADD  CONSTRAINT [DF_Itemmaster_CategoryId]  DEFAULT ((1)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsActive__1209AD79]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsDeleted__12FDD1B2]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__CreatedDa__13F1F5EB]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsActive__69C6B1F5]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsDelete__6ABAD62E]  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__CreatedD__6BAEFA67]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 23-08-2026 21:01:44 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Cusomer_Delete]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cusomer_Delete]

(
@Id INT
)
AS 
BEGIN

DELETE FROM Customer

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Delete]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Delete]

(
@Id INT
)
AS 
BEGIN

DELETE FROM Customer

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetAll]

AS
BEGIN

SELECT Id,CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Customer

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetById]
(
@Id INT
)
AS 
BEGIN

SELECT Id,CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Customer

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetPaged]
(
@CustomerCode VARCHAR(20) = NULL,
@CustomerName VARCHAR(20) =NULL,
@MobileNo NVARCHAR(20) = NULL,
@City NVARCHAR(100) = NULL,
@PageNumber INT =1,
@Pagesize INT =10
)

AS 
BEGIN

	SET NOCOUNT ON;

	IF (@PageNumber <=0) SET @PageNumber =1;
	IF (@pageSize <=0) SET @pageSize =10;

	DECLARE @offset INT = ( @pageNumber -1) * @PageSize;

    SELECT Id,CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,State,Country,ZipCode,GstNo,
    IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,

COUNT(*) OVER() AS TotalRecords

FROM Customer

WHERE
(@CustomerCode IS NULL OR CustomerCode LIKE '%' + @CustomerCode + '%')AND
(@CustomerName IS NULL OR CustomerName LIKE '%' + @CustomerName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

ORDER BY Id ASC
OFFSET @offset ROWS

FETCH NEXT @PageSize ROWS ONLY;

SELECT

COUNT (1) AS TotalRecords

FROM Customer

WHERE
(@CustomerCode IS NULL OR CustomerCode LIKE '%' + @CustomerCode + '%')AND
(@CustomerName IS NULL OR CustomerName LIKE '%' + @CustomerName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_Customer_Insert]
(
@CustomerCode varchar(20),
@CustomerName nvarchar(100),
@ContactPerson nvarchar(100)= NULL,
@MobileNo varchar(20)= NULL,
@Email varchar(100)= NULL,
@Address1 nvarchar(200)= NULL,
@Address2 nvarchar(200)= NULL,
@City nvarchar(100)= NULL,
@State nvarchar(100)= NULL,
@Country nvarchar(100)= NULL,
@ZipCode varchar(20)= NULL,
@GstNo varchar(50)= NULL
)

AS 
BEGIN
SET NOCOUNT ON;
INSERT INTO Customer
(
CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,CreatedBy,UpdatedBy,UpdatedDate
)
VALUES
(
@CustomerCode,@CustomerName,@ContactPerson,@MobileNo,@Email,@Address1,@Address2,@City,@State,@Country,@ZipCode,@GstNo,SYSTEM_USER,
NULL,NULL
)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Update]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Update]
(
@Id INT,
@CustomerCode varchar(20),
@CustomerName nvarchar(20),
@ContactPerson nvarchar(100)= NULL,
@MobileNo varchar(20)= NULL,
@Email varchar(100)= NULL,
@Address1 nvarchar(200)= NULL,
@Address2 nvarchar(200)= NULL,
@City nvarchar(100)= NULL,
@State nvarchar(100)= NULL,
@Country nvarchar(100)= NULL,
@ZipCode varchar(20)= NULL,
@GstNo varchar(50)= NULL,
@IsActive bit,
@IsDeleted bit
)
AS 
BEGIN

Update Customer
SET
CustomerCode=@CustomerCode,
CustomerName=@CustomerName,
ContactPerson=@ContactPerson,
MobileNo=@MobileNo,
Email=@Email,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
Country=@Country,
ZipCode=@ZipCode,
GstNo=@GstNo,
IsActive=@IsActive,
IsDeleted=@IsDeleted,
UpdatedBy=SYSTEM_USER,
UpdatedDate=GETDATE()

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 23-08-2026 21:01:44 ******/
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
	 SELECT @Id AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetAll]
AS
BEGIN
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    ORDER BY I.Id ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 23-08-2026 21:01:44 ******/
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
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    WHERE I.Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged]
(
    @CategoryId INT = NULL,
    @ItemBarCode VARCHAR(25) = NULL,
    @ItemCode VARCHAR(10) = NULL,
    @ItemName VARCHAR(100) = NULL,
    @Uom VARCHAR(3) = NULL,
    @IsActive BIT = NULL,
    @PageNumber INT = 1,
    @PageSize INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;
 
    IF (@PageNumber <= 0)
        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)
        SET @PageSize = 10;
 
    DECLARE @Offset INT;
 
    SET @Offset = (@PageNumber - 1) * @PageSize;
 
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
 
    WHERE
        (@CategoryId IS NULL
            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL
            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL
            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL
            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL
            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL
            OR I.IsActive = @IsActive)
 
    ORDER BY I.Id DESC
 
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
 
    SELECT
        COUNT(1) AS TotalRecords
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
 
    WHERE
        (@CategoryId IS NULL
            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL
            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL
            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL
            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL
            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL
            OR I.IsActive = @IsActive);
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Insert]
(
    @CategoryId INT,
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
        CategoryId, 
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
		Updateddate
    )
    VALUES
    (
        @CategoryId, 
		@ItemBarCode, 
		@Itemcode, 
		@Itemname,
        @Description, 
		@Uom, 
		@Rate,
        @Minimumstock, 
		@Maximumstock,
        @IsActive, 
		SYSTEM_USER,
		GETDATE(),
        NULL, 
		NULL
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Update]
(
    @Id INT,
    @CategoryId INT,
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
    --SET NOCOUNT ON;
 
    UPDATE dbo.Itemmaster
    SET
        CategoryId = @CategoryId,
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
    WHERE Id = @Id;
 
    SELECT @Id AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Delete]

(

    @Id        INT,

    @UpdatedBy NVARCHAR(100)

)

AS

BEGIN

    SET NOCOUNT ON;
 
    IF NOT EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE Id = @Id

          AND IsDeleted = 0

    )

    BEGIN

        SELECT CAST(0 AS BIT) AS Success;

        RETURN;

    END;
 
    UPDATE dbo.Users

    SET

        IsDeleted  = 1,

        IsActive   = 0,

        UpdatedBy  = @UpdatedBy,

        UpdatedDate = GETUTCDATE()

    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;

END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetAll]

AS

BEGIN

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        LastLoginDate,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM dbo.Users

    WHERE IsDeleted = 0

    ORDER BY Id;

END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetByEmail]
(
    @Email VARCHAR(255)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        LastName,
        DisplayName,
        IsActive,
        IsDeleted
    FROM dbo.Users
    WHERE Email = @Email;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 23-08-2026 21:01:44 ******/
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

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        LastLoginDate,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM dbo.Users

    WHERE Id = @Id

      AND IsDeleted = 0;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetByUserName]

(

    @UserName VARCHAR(100)

)

AS

BEGIN

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        PasswordHash,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        IsActive,

        IsDeleted,

        LastLoginDate

    FROM dbo.Users

    WHERE UserName = @UserName;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetPaged]

(

    @UserName    VARCHAR(100) = NULL,

    @Email       VARCHAR(255) = NULL,

    @FirstName   VARCHAR(100) = NULL,

    @LastName    VARCHAR(100) = NULL,

    @IsActive    BIT = NULL,

    @PageNumber  INT = 1,

    @PageSize    INT = 10

)

AS

BEGIN

    --SET NOCOUNT ON;
 
    IF (@PageNumber <= 0)

        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)

        SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
    
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        LastLoginDate,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate,
 
        COUNT(*) OVER() AS TotalRecords
 
    FROM dbo.Users
 
    WHERE

        IsDeleted = 0
 
        AND

        (

            @UserName IS NULL

            OR UserName LIKE '%' + @UserName + '%'

        )
 
        AND

        (

            @Email IS NULL

            OR Email LIKE '%' + @Email + '%'

        )
 
        AND

        (

            @FirstName IS NULL

            OR FirstName LIKE '%' + @FirstName + '%'

        )
 
        AND

        (

            @LastName IS NULL

            OR LastName LIKE '%' + @LastName + '%'

        )
 
        AND

        (

            @IsActive IS NULL

            OR IsActive = @IsActive

        )
 
    ORDER BY Id ASC
 
    OFFSET @Offset ROWS

    FETCH NEXT @PageSize ROWS ONLY;
 
    SELECT

        COUNT(1) AS TotalRecords
 
    FROM dbo.Users
 
    WHERE

        IsDeleted = 0
 
        AND

        (

            @UserName IS NULL

            OR UserName LIKE '%' + @UserName + '%'

        )
 
        AND

        (

            @Email IS NULL

            OR Email LIKE '%' + @Email + '%'

        )
 
        AND

        (

            @FirstName IS NULL

            OR FirstName LIKE '%' + @FirstName + '%'

        )
 
        AND

        (

            @LastName IS NULL

            OR LastName LIKE '%' + @LastName + '%'

        )
 
        AND

        (

            @IsActive IS NULL

            OR IsActive = @IsActive

        );
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Insert]
(
    @UserName       VARCHAR(100),
    @Email          VARCHAR(255),
    @PasswordHash   VARCHAR(500),
    @FirstName      VARCHAR(100),
    @MiddleName     VARCHAR(100) = NULL,
    @LastName       VARCHAR(100),
    @DisplayName    VARCHAR(200),
    @PhoneNumber    VARCHAR(25),
    @AlternatePhone VARCHAR(25) = NULL,
    @AddressLine1   VARCHAR(255),
    @AddressLine2   VARCHAR(255) = NULL,
    @City           VARCHAR(100),
    @State          VARCHAR(100),
    @ZipCode        VARCHAR(20),
    @Country        VARCHAR(100),
    @DateOfBirth    DATE = NULL,
    @IsActive       BIT = 1,
    @CreatedBy      NVARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE UserName = @UserName
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50001, 'Username already exists.', 1;
    END;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Email = @Email
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50002, 'Email already exists.', 1;
    END;
 
    INSERT INTO dbo.Users
    (
        UserName,
        Email,
        PasswordHash,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @UserName,
        @Email,
        @PasswordHash,
        @FirstName,
        @MiddleName,
        @LastName,
        @DisplayName,
        @PhoneNumber,
        @AlternatePhone,
        @AddressLine1,
        @AddressLine2,
        @City,
        @State,
        @ZipCode,
        @Country,
        @DateOfBirth,
        @IsActive,
        0,
        @CreatedBy,
        GETUTCDATE()
    );
 
    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Update]

(

    @Id             INT,

    @UserName       VARCHAR(100),

    @Email          VARCHAR(255),

    @FirstName      VARCHAR(100),

    @MiddleName     VARCHAR(100) = NULL,

    @LastName       VARCHAR(100),

    @DisplayName    VARCHAR(200),

    @PhoneNumber    VARCHAR(25),

    @AlternatePhone VARCHAR(25) = NULL,

    @AddressLine1   VARCHAR(255),

    @AddressLine2   VARCHAR(255) = NULL,

    @City           VARCHAR(100),

    @State          VARCHAR(100),

    @ZipCode        VARCHAR(20),

    @Country        VARCHAR(100),

    @DateOfBirth    DATE = NULL,

    @IsActive       BIT,

    @UpdatedBy      NVARCHAR(100)

)

AS

BEGIN

    --SET NOCOUNT ON;
 
    IF NOT EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE Id = @Id

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50003, 'User not found.', 1;

    END;
 
    IF EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE UserName = @UserName

          AND Id <> @Id

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50004, 'Username already exists.', 1;

    END;
 
    IF EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE Email = @Email

          AND Id <> @Id

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50005, 'Email already exists.', 1;

    END;
 
    UPDATE dbo.Users

    SET

        UserName       = @UserName,

        Email          = @Email,

        FirstName      = @FirstName,

        MiddleName     = @MiddleName,

        LastName       = @LastName,

        DisplayName    = @DisplayName,

        PhoneNumber    = @PhoneNumber,

        AlternatePhone = @AlternatePhone,

        AddressLine1   = @AddressLine1,

        AddressLine2   = @AddressLine2,

        City           = @City,

        State          = @State,

        ZipCode        = @ZipCode,

        Country        = @Country,

        DateOfBirth    = @DateOfBirth,

        IsActive       = @IsActive,

        UpdatedBy      = @UpdatedBy,

        UpdatedDate    = GETUTCDATE()

    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_UpdateLastLogin]

(

    @Id INT

)

AS

BEGIN

    SET NOCOUNT ON;
 
    UPDATE dbo.Users

    SET

        LastLoginDate = GETUTCDATE()

    WHERE Id = @Id

      AND IsDeleted = 0

      AND IsActive = 1;
 
    SELECT CAST(1 AS BIT) AS Success;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Delete]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_Delete]
(
@Id INT
)
AS 
BEGIN

DELETE FROM Vendor

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_GetAll]

AS
BEGIN

SELECT Id,VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Vendor

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_GetById]
(
@Id INT
)

AS
BEGIN

SELECT Id,VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Vendor
WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Vendor_GetPaged]
(
@VendorCode VARCHAR(20) = NULL,
@VendorName VARCHAR(20) =NULL,
@MobileNo NVARCHAR(20) = NULL,
@City NVARCHAR(100) = NULL,
@PageNumber INT =1,
@PageSize INT =10
)

AS 
BEGIN

	SET NOCOUNT ON;

	IF (@PageNumber <=0) SET @PageNumber =1;
	IF (@pageSize <=0) SET @pageSize =10;

	DECLARE @offset INT = ( @pageNumber -1) * @PageSize;

    SELECT Id,VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,State,Country,ZipCode,GstNo,
    IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,

COUNT(*) OVER() AS TotalRecords

FROM Vendor

WHERE
(@VendorCode IS NULL OR VendorCode LIKE '%' + @VendorCode + '%')AND
(@VendorName IS NULL OR VendorName LIKE '%' + @VendorName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

ORDER BY Id ASC
OFFSET @offset ROWS

FETCH NEXT @PageSize ROWS ONLY;

SELECT

COUNT (1) AS TotalRecords

FROM Vendor

WHERE
(@VendorCode IS NULL OR VendorCode LIKE '%' + @VendorCode + '%')AND
(@VendorName IS NULL OR VendorName LIKE '%' + @VendorName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Insert]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_Insert]
(
@VendorCode varchar(20),
@VendorName nvarchar(100),
@ContactPerson nvarchar(100) = NULL,
@MobileNo varchar(20) = NULL,
@Email varchar(100) = NULL,
@Address1 nvarchar(200) = NULL,
@Address2 nvarchar(200) = NULL,
@City nvarchar(100) = NULL,
@State nvarchar(100) = NULL,
@Country nvarchar(100) = NULL,
@ZipCode varchar(20) = NULL,
@GstNo varchar(50) = NULL
)
AS
BEGIN

INSERT INTO Vendor
(
VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,CreatedBy,UpdatedBy,UpdatedDate
)
VALUES
(
@VendorCode,@VendorName,@ContactPerson,@MobileNo,@Email,@Address1,@Address2,@City,@State,@Country,@ZipCode,@GstNo,SYSTEM_USER,
NULL,NULL
)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Update]    Script Date: 23-08-2026 21:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_Update]
(
@Id INT,
@VendorCode varchar(20),
@VendorName nvarchar(100),
@ContactPerson nvarchar(100),
@MobileNo varchar(20)= NULL,
@Email varchar(100)= NULL,
@Address1 nvarchar(200)= NULL,
@Address2 nvarchar(200)= NULL,
@City nvarchar(100)= NULL,
@State nvarchar(100)= NULL,
@Country nvarchar(100)= NULL,
@ZipCode varchar(20)= NULL,
@GstNo varchar(50)= NULL,
@IsActive bit,
@IsDeleted bit
)
AS 
BEGIN

UPDATE Vendor
SET

VendorCode=@VendorCode,
VendorName=@VendorName,
ContactPerson=@ContactPerson,
MobileNo=@MobileNo,
Email=@Email,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
Country=@Country,
ZipCode=@ZipCode,
GstNo=@GstNo,
IsActive=@IsActive,
IsDeleted=@IsDeleted,
UpdatedBy=SYSTEM_USER,
UpdatedDate=GETDATE()

WHERE Id=@Id

END
GO

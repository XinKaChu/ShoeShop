USE [master]
GO
/****** Object:  Database [ShoeShop]    Script Date: 11/28/2017 9:31:04 PM ******/
CREATE DATABASE [ShoeShop]
GO
USE [ShoeShop]
GO
/****** Object:  Table [dbo].[ActionRoles]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
	[WebActionId] [int] NOT NULL,
 CONSTRAINT [PK_ActionRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[NameVN] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NULL,
	[ColorNameVN] [nvarchar](50) NULL,
	[ColorCode] [nchar](6) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterRoles]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MasterId] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MasterRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Masters]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Masters](
	[Id] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
 CONSTRAINT [PK_Masters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Material] [nvarchar](50) NULL,
	[MaterialVN] [nvarchar](50) NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductSizeId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[RequireDate] [datetime] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColors]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[ColorId] [int] NULL,
 CONSTRAINT [PK_ProductColors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[BrandId] [int] NULL,
	[CategoryId] [int] NULL,
	[MaterialId] [int] NULL,
	[Price] [float] NULL,
	[Gender] [int] NULL,
	[Special] [bit] NULL,
	[Feature] [bit] NULL,
	[Discount] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[SizeId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeVN] [float] NULL,
	[SizeUS] [float] NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebActions]    Script Date: 11/28/2017 9:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebActions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WebActions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name]) VALUES (1, N'Adidas')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (2, N'ASICS')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (3, N'B.O.C')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (4, N'Converse')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (5, N'DrMartens')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (6, N'Eastland')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (7, N'Fila')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (8, N'GBX')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (9, N'Highpoint')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (10, N'Impo')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (11, N'Laredo')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (12, N'Magnum')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (13, N'Nike')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (14, N'New Balance')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (15, N'Puma')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (16, N'Reebok')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (17, N'Rocky')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (18, N'Sporto')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (19, N'Teva')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (20, N'Timbaland')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (21, N'Vans')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (22, N'Levi')
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (1, N'Men''s', N'Nam')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (2, N'Women''s', N'Nữ')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (3, N'Kid''s', N'Trẻ em')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (4, N'Sport''s', N'Thể thao')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (1, N'Black', N'Đen', N'000000')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (2, N'Grey', N'Xám', N'808080')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (3, N'White', N'Trắng', N'FFFFFF')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (4, N'Bone', N'Trắng đục', N'FFFFF0')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (5, N'Beige', N'Be', N'F5F5DC')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (7, N'Brown', N'Nâu', N'8B4513')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (8, N'Red', N'Đỏ', N'FF0000')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (9, N'Purple', N'Tím', N'800080')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (10, N'Blue', N'Xanh da trời', N'0000FF')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (11, N'Green', N'Xanh lá', N'008000')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (12, N'Yellow', N'Vàng', N'FFFF00')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (13, N'Orange', N'Cam', N'FFA500')
INSERT [dbo].[Colors] ([Id], [ColorName], [ColorNameVN], [ColorCode]) VALUES (14, N'Pink', N'Hồng', N'FFC0CB')
SET IDENTITY_INSERT [dbo].[Colors] OFF
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'customer1', N'123456', N'nguyen nghiem', N'nghiem@gmail.com', N'1.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'customer2', N'123456', N'nguyen nghiem 2', N'nghiem2@gmail.com', N'2.jpg', 1)
INSERT [dbo].[Masters] ([Id], [Password], [Fullname], [Email], [Mobile]) VALUES (N'huuthien', N'123456', N'Huu Thien', N'huuthien@gmail.com', N'013418536')
INSERT [dbo].[Masters] ([Id], [Password], [Fullname], [Email], [Mobile]) VALUES (N'khaiquan', N'123456', N'Khai Quan', N'khaiquan@gmail.com', N'093616186')
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([Id], [Material], [MaterialVN]) VALUES (1, N'Leather', N'Da')
INSERT [dbo].[Materials] ([Id], [Material], [MaterialVN]) VALUES (2, N'Rubber', N'Cao su')
INSERT [dbo].[Materials] ([Id], [Material], [MaterialVN]) VALUES (3, N'Artificial', N'Nhân tạo')
INSERT [dbo].[Materials] ([Id], [Material], [MaterialVN]) VALUES (4, N'Faux leather', N'Simili')
INSERT [dbo].[Materials] ([Id], [Material], [MaterialVN]) VALUES (5, N'PU', N'Nhựa tổng hợp')
SET IDENTITY_INSERT [dbo].[Materials] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (1, 1, 177, 3000000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (2, 1, 88, 7500000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (3, 1, 124, 3800000, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (4, 1, 126, 3800000, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (5, 1, 127, 3800000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (6, 2, 117, 1600000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (8, 3, 144, 4900000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (9, 3, 145, 4900000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductSizeId], [Price], [Quantity], [Discount]) VALUES (10, 3, 143, 4900000, 2, 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount]) VALUES (1, N'customer1', CAST(N'2017-11-28T00:00:00.000' AS DateTime), CAST(N'2017-11-30T00:00:00.000' AS DateTime), N'nguyen nghiem', N'aaaaa', N'aaaaa', 29500000)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount]) VALUES (2, N'customer1', CAST(N'2017-11-28T00:00:00.000' AS DateTime), CAST(N'2017-11-30T00:00:00.000' AS DateTime), N'nguyen nghiem', N'aaaa', N'aaa', 5600000)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount]) VALUES (3, N'customer1', CAST(N'2017-11-28T00:00:00.000' AS DateTime), CAST(N'2017-11-30T00:00:00.000' AS DateTime), N'nguyen nghiem', N'TP HCM', N'ABC', 19600000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductColors] ON 

INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (1, N'50029', 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (2, N'53566', 8)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (3, N'54277', 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (4, N'55218', 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (5, N'58922', 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (6, N'54934', 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (7, N'59851', 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (8, N'34928', 14)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (10, N'69926', 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (11, N'00932', 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (12, N'70044', 11)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (13, N'72932', 14)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (14, N'31454', 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (22, N'71071', 14)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (23, N'64507', 7)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (24, N'18880', 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (25, N'87879', 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (26, N'71649', 10)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (27, N'71946', 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (28, N'23979', 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (29, N'60131', 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (30, N'53605', 13)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (31, N'18126', 11)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (32, N'70483', 2)
SET IDENTITY_INSERT [dbo].[ProductColors] OFF
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (1, N'50029', N'50029.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (2, N'50029', N'50029_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (3, N'50029', N'50029_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (4, N'50029', N'50029_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (5, N'50029', N'50029_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (6, N'53566', N'53566.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (7, N'53566', N'53566_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (8, N'53566', N'53566_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (9, N'53566', N'53566_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (10, N'53566', N'53566_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (11, N'54277', N'54277.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (12, N'54277', N'54277_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (13, N'54277', N'54277_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (14, N'54277', N'54277_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (15, N'54277', N'54277_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (16, N'55218', N'55218.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (17, N'55218', N'55218_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (18, N'55218', N'55218_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (19, N'55218', N'55218_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (20, N'55218', N'55218_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (21, N'58922', N'58922.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (22, N'58922', N'58922_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (23, N'58922', N'58922_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (24, N'58922', N'58922_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (25, N'58922', N'58922_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (26, N'54934', N'54934.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (27, N'54934', N'54934_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (28, N'54934', N'54934_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (29, N'54934', N'54934_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (30, N'54934', N'54934_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (31, N'34928', N'34928.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (32, N'34928', N'34928_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (33, N'34928', N'34928_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (34, N'34928', N'34928_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (35, N'34928', N'34928_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (36, N'59851', N'59851.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (37, N'59851', N'59851_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (38, N'59851', N'59851_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (39, N'59851', N'59851_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (40, N'59851', N'59851_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (41, N'59851', N'59851_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (47, N'69926', N'69926.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (48, N'69926', N'69926_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (49, N'69926', N'69926_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (50, N'69926', N'69926_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (51, N'69926', N'69926_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (52, N'00932', N'00932.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (53, N'00932', N'00932_2,jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (54, N'00932', N'00932_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (55, N'00932', N'00932_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (56, N'00932', N'00932_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (57, N'70044', N'70044.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (58, N'70044', N'70044_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (59, N'70044', N'70044_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (60, N'70044', N'70044_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (61, N'70044', N'70044_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (62, N'72932', N'72932.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (63, N'72932', N'72932_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (64, N'72932', N'72932_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (65, N'72932', N'72932_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (66, N'72932', N'72932_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (67, N'31454', N'31454.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (68, N'31454', N'31454_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (69, N'31454', N'31454_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (70, N'31454', N'31454_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (71, N'31454', N'31454_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (72, N'71071', N'71071.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (73, N'71071', N'71071_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (74, N'71071', N'71071_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (75, N'71071', N'71071_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (76, N'71071', N'71071_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (77, N'64507', N'64507.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (78, N'64507', N'64507_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (79, N'64507', N'64507_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (80, N'64507', N'64507_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (81, N'64507', N'64507_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (82, N'18880', N'18880.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (83, N'18880', N'18880_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (84, N'18880', N'18880_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (85, N'18880', N'18880_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (86, N'18880', N'18880_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (87, N'87879', N'87879.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (88, N'87879', N'87879_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (89, N'87879', N'87879_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (90, N'87879', N'87879_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (91, N'87879', N'87879_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (92, N'71649', N'71649.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (93, N'71649', N'71649_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (94, N'71649', N'71649_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (95, N'71649', N'71649_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (96, N'71649', N'71649_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (97, N'71946', N'71946.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (98, N'71946', N'71946_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (99, N'71946', N'71946_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (100, N'71946', N'71946_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (101, N'71946', N'71946_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (103, N'23979', N'23979.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (104, N'23979', N'23979_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (105, N'23979', N'23979_3.jpg')
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (106, N'23979', N'23979_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (107, N'23979', N'23979_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (108, N'60131', N'60131.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (109, N'60131', N'60131_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (110, N'60131', N'60131_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (111, N'60131', N'60131_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (112, N'60131', N'60131_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (113, N'53605', N'53605.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (114, N'53605', N'53605_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (115, N'53605', N'53605_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (116, N'53605', N'53605_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (117, N'53605', N'53605_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (118, N'18126', N'18126.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (119, N'18126', N'18126_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (120, N'18126', N'18126_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (121, N'18126', N'18126_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (122, N'18126', N'18126_5.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (123, N'70483', N'70483.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (124, N'70483', N'70483_2.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (125, N'70483', N'70483_3.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (126, N'70483', N'70483_4.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (127, N'70483', N'70483_5.jpg')
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'00932', N'Emptor', 7, 1, 4, 7500000, 1, 1, 1, 0, N'Classy looks come with casual comfort in the Emptor Slip On', CAST(N'2017-12-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'18126', N'Enzo Sneaker', 15, 1, 2, 5200000, 1, 0, 1, 0, N'Contemporary style is full of fit with the Enzo Sneaker from Puma', CAST(N'2017-12-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'18880', N'Ravenue', 7, 4, 1, 3800000, 0, 1, 0, 0, N'Follow your own path in the Ravenue 3 Running Shoe from Fila', CAST(N'2017-12-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'23979', N'Monty', 11, 1, 2, 7900000, 1, 1, 1, 10, N'Slither into a new look with the Monty Cowboy Boot from Laredo', CAST(N'2017-12-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'31454', N'Peggy Clog', 3, 2, 3, 3800000, 0, 0, 0, 0, N'Complete your casual wardrobe with the Peggy Clog from b.o.c', CAST(N'2017-12-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'34928', N'Airmax Motion LW', 1, 4, 3, 6200000, 0, 1, 0, 10, N'These sneakers, number one, are beautiful! Also, they fit like a glove and perfectly sized', CAST(N'2017-12-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'50029', N'Atwater Chukka', 22, 1, 3, 4000000, 1, 0, 0, 0, N'It’s going to be a good day with the Atwater Chukka Sneaker from Levi’s.', CAST(N'2017-10-10T05:30:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'53566', N'High Top Skate', 21, 1, 1, 6400000, 1, 0, 1, 10, N'Get an old-school skate look with the Ward High Top Sneaker from Vans.', CAST(N'2017-11-10T00:30:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'53605', N'Air Max Invigor', 13, 4, 2, 3900000, 1, 1, 0, 0, N'They will feel the speed in the Air Max Invigor Running Shoe from Nike', CAST(N'2017-12-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'54277', N'High Scuban', 20, 1, 4, 5300000, 0, 0, 0, 0, N'The High Scuban  points the way to your next training session.', CAST(N'2017-12-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'54934', N'R8 Princess', 17, 2, 2, 7000000, 0, 1, 0, 0, N'Lace up a retro-stylish look with the R8 Pricess', CAST(N'2017-12-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'55218', N'Sk8', 19, 1, 5, 5000000, 1, 1, 0, 0, N'Flex grooves with hot-knife cuts in the outsole for traction and a natural flexibility', CAST(N'2017-12-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'58922', N'Yame', 18, 1, 2, 3500000, 1, 0, 0, 20, N'Perforated overlay around midfoot for added support and breathability', CAST(N'2017-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'59851', N'Atwood Slip', 21, 3, 2, 3400000, 1, 0, 1, 10, N'He''ll love the look, and you''ll love the ease, of the Atwood Slip On Sneaker from Vans', CAST(N'2017-11-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'60131', N'Magnum', 12, 1, 4, 13000000, 1, 1, 1, 0, N'The ultimate in traction and toughness, the Precision Ultra Lite II Composite Toe Waterproof Boot from Magnum.', CAST(N'2017-12-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'64507', N'Syracuse', 6, 3, 2, 1600000, 1, 0, 1, 0, N'Classic good looks and impeccable comfort go into the slightly rugged Syracuse Slip On from Eastland', CAST(N'2017-12-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'69926', N'Chuck Taylor All Star', 4, 2, 5, 2400000, 0, 1, 1, 0, N' Go with a classic in the iconic Converse Chuck Taylor All Star Low Top Sneaker', CAST(N'2017-12-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'70044', N'Nitrel', 14, 3, 4, 1500000, 1, 0, 0, 0, N'Fuel for their next game with the Nitrel Sneaker from New Balance', CAST(N'2017-12-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'70483', N'Harman Sneaker', 16, 4, 3, 4200000, 1, 0, 1, 0, N'Back to basics in the fashion forward Harman Sneaker from Reebok', CAST(N'2017-12-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'71071', N'Delaney Combat Boot', 5, 2, 2, 4000000, 0, 0, 0, 0, N'She''ll love the classic Delaney Combat Boot from Dr. Martens', CAST(N'2017-12-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'71649', N'Hydro Static', 9, 3, 5, 2300000, 1, 0, 0, 0, N'He''ll make a stylish splash in the water-resistant Hydro Static Sneaker', CAST(N'2017-12-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'71946', N'Revive Sandal', 10, 2, 3, 4900000, 0, 1, 0, 0, N'Bring your look back to the forefront in the Revive Sandal from Impo', CAST(N'2017-12-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'72932', N'GEL-Contend', 2, 4, 1, 3700000, 0, 0, 0, 10, N'Get ahead of the pack in the GEL-Contend 4 Running Shoe from ASICS', CAST(N'2017-12-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [BrandId], [CategoryId], [MaterialId], [Price], [Gender], [Special], [Feature], [Discount], [Description], [CreateDate], [Status]) VALUES (N'87879', N'Bran Oxford', 8, 4, 3, 3900000, 1, 1, 1, 0, N'Your look goes according to plan in the Bran Oxford from GBX', CAST(N'2017-12-22T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ProductSizes] ON 

INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (1, N'50029', 9, 35)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (2, N'50029', 10, 70)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (3, N'50029', 11, 27)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (4, N'50029', 12, 29)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (5, N'50029', 13, 96)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (6, N'50029', 14, 60)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (7, N'50029', 15, 30)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (8, N'50029', 16, 40)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (9, N'50029', 17, 55)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (10, N'50029', 18, 66)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (11, N'50029', 19, 82)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (12, N'53566', 7, 47)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (13, N'53566', 8, 23)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (14, N'53566', 9, 35)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (15, N'53566', 10, 67)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (16, N'53566', 11, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (17, N'53566', 12, 53)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (18, N'53566', 13, 54)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (19, N'53566', 14, 89)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (20, N'53566', 15, 24)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (21, N'54277', 8, 53)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (22, N'54277', 9, 42)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (23, N'54277', 10, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (24, N'54277', 11, 87)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (25, N'54277', 12, 37)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (26, N'54277', 13, 49)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (27, N'55218', 8, 52)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (28, N'55218', 9, 87)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (29, N'55218', 10, 83)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (30, N'55218', 11, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (31, N'55218', 12, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (32, N'55218', 13, 64)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (33, N'55218', 14, 87)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (34, N'55218', 15, 49)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (35, N'58922', 7, 49)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (36, N'58922', 8, 52)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (37, N'58922', 9, 42)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (38, N'58922', 10, 87)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (39, N'58922', 11, 49)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (40, N'58922', 12, 34)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (41, N'58922', 13, 55)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (42, N'54934', 5, 93)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (43, N'54934', 6, 19)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (44, N'54934', 7, 12)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (45, N'54934', 8, 87)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (46, N'54934', 9, 42)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (47, N'54934', 10, 25)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (48, N'54934', 11, 17)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (49, N'54934', 12, 63)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (57, N'34928', 8, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (58, N'34928', 9, 72)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (59, N'34928', 10, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (60, N'34928', 11, 45)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (61, N'34928', 12, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (62, N'34928', 13, 65)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (63, N'34928', 14, 76)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (64, N'34928', 15, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (65, N'59851', 1, 87)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (66, N'59851', 2, 56)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (67, N'59851', 3, 49)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (68, N'59851', 4, 34)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (69, N'59851', 5, 94)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (70, N'59851', 6, 65)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (71, N'59851', 7, 69)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (78, N'69926', 10, 42)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (79, N'69926', 11, 98)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (80, N'69926', 12, 31)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (81, N'69926', 13, 83)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (82, N'69926', 14, 37)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (83, N'69926', 15, 59)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (84, N'00932', 9, 23)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (85, N'00932', 10, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (86, N'00932', 11, 54)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (87, N'00932', 12, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (88, N'00932', 13, 66)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (89, N'00932', 14, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (90, N'70044', 1, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (91, N'70044', 2, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (92, N'70044', 3, 34)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (93, N'70044', 4, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (94, N'70044', 5, 38)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (95, N'70044', 6, 48)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (96, N'70044', 7, 49)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (97, N'72932', 9, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (98, N'72932', 10, 88)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (99, N'72932', 11, 23)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (100, N'72932', 12, 48)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (101, N'72932', 13, 38)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (102, N'72932', 14, 82)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (103, N'31454', 7, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (104, N'31454', 8, 93)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (105, N'31454', 9, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (106, N'31454', 10, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (107, N'31454', 11, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (108, N'31454', 12, 33)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (109, N'31454', 13, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (110, N'71071', 7, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (111, N'71071', 8, 32)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (112, N'71071', 9, 33)
GO
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (113, N'71071', 10, 90)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (114, N'71071', 11, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (115, N'71071', 12, 38)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (116, N'64507', 3, 23)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (117, N'64507', 4, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (118, N'64507', 5, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (119, N'64507', 6, 48)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (120, N'64507', 7, 89)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (121, N'64507', 8, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (122, N'18880', 7, 28)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (123, N'18880', 8, 43)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (124, N'18880', 9, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (125, N'18880', 10, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (126, N'18880', 11, 11)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (127, N'18880', 12, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (128, N'18880', 13, 23)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (129, N'87879', 9, 29)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (130, N'87879', 10, 20)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (131, N'87879', 11, 48)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (132, N'87879', 12, 38)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (133, N'87879', 13, 39)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (134, N'87879', 14, 19)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (135, N'71649', 3, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (136, N'71649', 4, 89)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (137, N'71649', 5, 78)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (138, N'71649', 6, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (139, N'71649', 7, 87)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (140, N'71946', 7, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (141, N'71946', 8, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (142, N'71946', 9, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (143, N'71946', 10, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (144, N'71946', 11, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (145, N'71946', 12, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (146, N'23979', 10, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (147, N'23979', 11, 11)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (148, N'23979', 12, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (149, N'23979', 13, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (150, N'23979', 14, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (151, N'23979', 15, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (152, N'23979', 16, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (153, N'60131', 9, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (154, N'60131', 10, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (155, N'60131', 11, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (156, N'60131', 12, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (157, N'60131', 13, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (158, N'60131', 14, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (159, N'60131', 15, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (160, N'53605', 9, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (161, N'53605', 10, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (162, N'53605', 11, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (163, N'53605', 12, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (164, N'53605', 13, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (165, N'18126', 9, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (166, N'18126', 10, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (167, N'18126', 11, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (168, N'18126', 12, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (169, N'18126', 13, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (170, N'18126', 14, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (171, N'18126', 15, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (172, N'70483', 8, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (173, N'70483', 9, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (174, N'70483', 10, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (175, N'70483', 11, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (176, N'70483', 12, 99)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (177, N'70483', 13, 99)
SET IDENTITY_INSERT [dbo].[ProductSizes] OFF
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (1, 34, 4)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (2, 34.5, 4.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (3, 35, 5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (4, 35.5, 5.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (5, 36, 6)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (6, 36.5, 6.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (7, 37, 7)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (8, 37.5, 7.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (9, 38, 8)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (10, 38.5, 8.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (11, 39, 9)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (12, 39.5, 9.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (13, 40, 10)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (14, 40.5, 10.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (15, 41, 11)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (16, 41.5, 11.5)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (17, 42, 12)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (18, 43, 13)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (19, 44, 14)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (20, 45, 15)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (21, 46, 16)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (22, 47, 17)
INSERT [dbo].[Sizes] ([Id], [SizeVN], [SizeUS]) VALUES (23, 48, 18)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_Active]  DEFAULT ((0)) FOR [Activated]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Amount__381A47C8]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_Roles]
GO
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_WebActions] FOREIGN KEY([WebActionId])
REFERENCES [dbo].[WebActions] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_WebActions]
GO
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Masters] FOREIGN KEY([MasterId])
REFERENCES [dbo].[Masters] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Masters]
GO
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Roles]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_ProductSizes] FOREIGN KEY([ProductSizeId])
REFERENCES [dbo].[ProductSizes] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_ProductSizes]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Colors] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Colors]
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Products]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Materials]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes]
GO
USE [master]
GO
ALTER DATABASE [ShoeShop] SET  READ_WRITE 
GO

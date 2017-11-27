USE [ShoeShop]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebActions]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 11/12/2017 22:23:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/12/2017 22:23:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/12/2017 22:23:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Masters]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/12/2017 22:23:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif'),
	[Activated] [bit] NOT NULL CONSTRAINT [DF_Customers_Active]  DEFAULT ((0)),
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterRoles]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionRoles]    Script Date: 11/12/2017 22:23:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/12/2017 22:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)),
	[Quantity] [int] NOT NULL CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)),
	[Discount] [float] NOT NULL CONSTRAINT [DF_OrderDetails_Discount]  DEFAULT ((0)),
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColors]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/12/2017 22:23:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/12/2017 22:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()),
	[RequireDate] [datetime] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Amount] [float] NOT NULL CONSTRAINT [DF__Orders__Amount__381A47C8]  DEFAULT ((0)),
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_ActionRoles_Roles]    Script Date: 11/12/2017 22:23:04 ******/
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_Roles]
GO
/****** Object:  ForeignKey [FK_ActionRoles_WebActions]    Script Date: 11/12/2017 22:23:04 ******/
ALTER TABLE [dbo].[ActionRoles]  WITH CHECK ADD  CONSTRAINT [FK_ActionRoles_WebActions] FOREIGN KEY([WebActionId])
REFERENCES [dbo].[WebActions] ([Id])
GO
ALTER TABLE [dbo].[ActionRoles] CHECK CONSTRAINT [FK_ActionRoles_WebActions]
GO
/****** Object:  ForeignKey [FK_MasterRoles_Masters]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Masters] FOREIGN KEY([MasterId])
REFERENCES [dbo].[Masters] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Masters]
GO
/****** Object:  ForeignKey [FK_MasterRoles_Roles]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[MasterRoles]  WITH CHECK ADD  CONSTRAINT [FK_MasterRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[MasterRoles] CHECK CONSTRAINT [FK_MasterRoles_Roles]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Orders]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
/****** Object:  ForeignKey [FK_ProductColors_Colors]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Colors] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Colors]
GO
/****** Object:  ForeignKey [FK_ProductColors_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Products]
GO
/****** Object:  ForeignKey [FK_ProductImages_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products]
GO
/****** Object:  ForeignKey [FK_Products_Brands]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_Products_Materials]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Materials]
GO
/****** Object:  ForeignKey [FK_ProductSizes_Products]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products]
GO
/****** Object:  ForeignKey [FK_ProductSizes_Sizes]    Script Date: 11/12/2017 22:23:05 ******/
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes]
GO

/* Insert vao table Brands*/
SET IDENTITY_INSERT [Brands] ON
INSERT INTO [Brands] ([Id],[Name])VALUES(1,N'Adidas')
INSERT INTO [Brands] ([Id],[Name])VALUES(2,N'ASICS')
INSERT INTO [Brands] ([Id],[Name])VALUES(3,N'B.O.C')
INSERT INTO [Brands] ([Id],[Name])VALUES(4,N'Converse')
INSERT INTO [Brands] ([Id],[Name])VALUES(5,N'DrMartens')
INSERT INTO [Brands] ([Id],[Name])VALUES(6,N'Eastland')
INSERT INTO [Brands] ([Id],[Name])VALUES(7,N'Fila')
INSERT INTO [Brands] ([Id],[Name])VALUES(8,N'GBX')
INSERT INTO [Brands] ([Id],[Name])VALUES(9,N'Highpoint')
INSERT INTO [Brands] ([Id],[Name])VALUES(10,N'Impo')
INSERT INTO [Brands] ([Id],[Name])VALUES(11,N'Laredo')
INSERT INTO [Brands] ([Id],[Name])VALUES(12,N'Magnum')
INSERT INTO [Brands] ([Id],[Name])VALUES(13,N'Nike')
INSERT INTO [Brands] ([Id],[Name])VALUES(14,N'New Balance')
INSERT INTO [Brands] ([Id],[Name])VALUES(15,N'Puma')
INSERT INTO [Brands] ([Id],[Name])VALUES(16,N'Reebok')
INSERT INTO [Brands] ([Id],[Name])VALUES(17,N'Rocky')
INSERT INTO [Brands] ([Id],[Name])VALUES(18,N'Sporto')
INSERT INTO [Brands] ([Id],[Name])VALUES(19,N'Teva')
INSERT INTO [Brands] ([Id],[Name])VALUES(20,N'Timbaland')
INSERT INTO [Brands] ([Id],[Name])VALUES(21,N'Vans')
INSERT INTO [Brands] ([Id],[Name])VALUES(22,N'Levi')
SET IDENTITY_INSERT [Brands] OFF

/*Insert vao table Categories*/
SET IDENTITY_INSERT [Categories] ON
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(1,N'Men''s',N'Nam')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(2,N'Women''s',N'Nữ')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(3,N'Kid''s',N'Trẻ em')
INSERT INTO [Categories] ([Id],[Name],[NameVN])VALUES(4,N'Sport''s',N'Thể thao')
SET IDENTITY_INSERT [Categories] OFF

/*Insert vao table Colors*/
SET IDENTITY_INSERT [Colors] ON
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(1,N'Black',N'Đen',N'000000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(2,N'Grey',N'Xám',N'808080')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(3,N'White',N'Trắng',N'FFFFFF')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(4,N'Bone',N'Trắng đục',N'FFFFF0')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(5,N'Beige',N'Be',N'F5F5DC')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(7,N'Brown',N'Nâu',N'8B4513')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(8,N'Red',N'Đỏ',N'FF0000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(9,N'Purple',N'Tím',N'800080')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(10,N'Blue',N'Xanh da trời',N'0000FF')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(11,N'Green',N'Xanh lá',N'008000')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(12,N'Yellow',N'Vàng',N'FFFF00')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(13,N'Orange',N'Cam',N'FFA500')
INSERT INTO [Colors] ([Id],[ColorName],[ColorNameVN],[ColorCode])VALUES(14,N'Pink',N'Hồng',N'FFC0CB')
SET IDENTITY_INSERT [Colors] OFF

/*Insert vao table Materials*/
SET IDENTITY_INSERT [Materials] ON
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(1,N'Leather',N'Da')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(2,N'Rubber',N'Cao su')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(3,N'Artificial',N'Nhân tạo')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(4,N'Faux leather',N'Simili')
INSERT INTO [Materials] ([Id],[Material],[MaterialVN])VALUES(5,N'PU',N'Nhựa tổng hợp')
SET IDENTITY_INSERT [Materials] OFF

/*Insert vao table Sizes*/
SET IDENTITY_INSERT [Sizes] ON
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(1,3.400000000000000e+001,4.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(2,3.450000000000000e+001,4.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(3,3.500000000000000e+001,5.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(4,3.550000000000000e+001,5.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(5,3.600000000000000e+001,6.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(6,3.650000000000000e+001,6.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(7,3.700000000000000e+001,7.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(8,3.750000000000000e+001,7.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(9,3.800000000000000e+001,8.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(10,3.850000000000000e+001,8.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(11,3.900000000000000e+001,9.000000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(12,3.950000000000000e+001,9.500000000000000e+000)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(13,4.000000000000000e+001,1.000000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(14,4.050000000000000e+001,1.050000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(15,4.100000000000000e+001,1.100000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(16,4.150000000000000e+001,1.150000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(17,4.200000000000000e+001,1.200000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(18,4.300000000000000e+001,1.300000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(19,4.400000000000000e+001,1.400000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(20,4.500000000000000e+001,1.500000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(21,4.600000000000000e+001,1.600000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(22,4.700000000000000e+001,1.700000000000000e+001)
INSERT INTO [Sizes] ([Id],[SizeVN],[SizeUS])VALUES(23,4.800000000000000e+001,1.800000000000000e+001)
SET IDENTITY_INSERT [Sizes] OFF

/*Insert vao table Products*/
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('00932','Emptor',7,1,4,7.500000000000000e+006,1,1,1,0,'Classy looks come with casual comfort in the Emptor Slip On','Dec 15 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('18126','Enzo Sneaker',15,1,2,5.200000000000000e+006,1,0,1,0,'Contemporary style is full of fit with the Enzo Sneaker from Puma','Dec 26 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('18880','Ravenue',7,4,1,3.800000000000000e+006,0,1,0,0,'Follow your own path in the Ravenue 3 Running Shoe from Fila','Dec 21 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('23979','Monty',11,1,2,7.900000000000000e+006,1,1,1,10,'Slither into a new look with the Monty Cowboy Boot from Laredo','Dec 23 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('31454','Peggy Clog',3,2,3,3.800000000000000e+006,0,0,0,0,'Complete your casual wardrobe with the Peggy Clog from b.o.c','Dec 18 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('34928','Airmax Motion LW',1,4,3,6.200000000000000e+006,0,1,0,10,'These sneakers, number one, are beautiful! Also, they fit like a glove and perfectly sized','Dec 15 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('50029','Atwater Chukka',22,1,3,4.000000000000000e+006,1,0,0,0,'It’s going to be a good day with the Atwater Chukka Sneaker from Levi’s.','Oct 10 2017  5:30:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('53566','High Top Skate',21,1,1,6.400000000000000e+006,1,0,1,10,'Get an old-school skate look with the Ward High Top Sneaker from Vans.','Nov 10 2017 12:30:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('53605','Air Max Invigor',13,4,2,3.900000000000000e+006,1,1,0,0,'They will feel the speed in the Air Max Invigor Running Shoe from Nike','Dec 25 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('54277','High Scuban',20,1,4,5.300000000000000e+006,0,0,0,0,'The High Scuban  points the way to your next training session.','Dec 10 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('54934','R8 Princess',17,2,2,7.000000000000000e+006,0,1,0,0,'Lace up a retro-stylish look with the R8 Pricess','Dec 13 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('55218','Sk8',19,1,5,5.000000000000000e+006,1,1,0,0,'Flex grooves with hot-knife cuts in the outsole for traction and a natural flexibility','Dec 11 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('58922','Yame',18,1,2,3.500000000000000e+006,1,0,0,20,'Perforated overlay around midfoot for added support and breathability','Dec 12 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('59040','Bearpaw',23,2,1,4.000000000000000e+006,0,1,0,0,'You''ll love the cozy comfort of the Elle Tall Winter Boot from Bearpaw','Dec 14 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('59851','Atwood Slip',21,3,2,3.400000000000000e+006,1,0,1,10,'He''ll love the look, and you''ll love the ease, of the Atwood Slip On Sneaker from Vans','Nov 23 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('60131','Magnum',12,1,4,1.300000000000000e+007,1,1,1,0,'The ultimate in traction and toughness, the Precision Ultra Lite II Composite Toe Waterproof Boot from Magnum.','Dec 24 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('64507','Syracuse',6,3,2,1.600000000000000e+006,1,0,1,0,'Classic good looks and impeccable comfort go into the slightly rugged Syracuse Slip On from Eastland','Dec 20 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('69926','Chuck Taylor All Star',4,2,5,2.400000000000000e+006,0,1,1,0,' Go with a classic in the iconic Converse Chuck Taylor All Star Low Top Sneaker','Dec 13 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('70044','Nitrel',14,3,4,1.500000000000000e+006,1,0,0,0,'Fuel for their next game with the Nitrel Sneaker from New Balance','Dec 16 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('70483','Harman Sneaker',16,4,3,4.200000000000000e+006,1,0,1,0,'Back to basics in the fashion forward Harman Sneaker from Reebok','Dec 27 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('71071','Delaney Combat Boot',5,2,2,4.000000000000000e+006,0,0,0,0,'She''ll love the classic Delaney Combat Boot from Dr. Martens','Dec 19 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('71095','Skechers',24,3,1,3.000000000000000e+006,0,0,0,0,'The Core Set Sneaker from Skechers will become part of your essential styles','Dec 28 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('71649','Hydro Static',9,3,5,2.300000000000000e+006,1,0,0,0,'He''ll make a stylish splash in the water-resistant Hydro Static Sneaker','Dec 23 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('71946','Revive Sandal',10,2,3,4.900000000000000e+006,0,1,0,0,'Bring your look back to the forefront in the Revive Sandal from Impo','Dec 24 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('72932','GEL-Contend',2,4,1,3.700000000000000e+006,0,0,0,10,'Get ahead of the pack in the GEL-Contend 4 Running Shoe from ASICS','Dec 17 2017 12:00:00:000AM',1)
INSERT INTO [Products] ([Id],[Name],[BrandId],[CategoryId],[MaterialId],[Price],[Gender],[Special],[Feature],[Discount],[Description],[CreateDate],[Status])VALUES('87879','Bran Oxford',8,4,3,3.900000000000000e+006,1,1,1,0,'Your look goes according to plan in the Bran Oxford from GBX','Dec 22 2017 12:00:00:000AM',1)

/*Insert vao table ProductColors*/
SET IDENTITY_INSERT [ProductColors] ON
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(1,'50029',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(2,'53566',8)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(3,'54277',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(4,'55218',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(5,'58922',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(6,'54934',3)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(7,'59851',2)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(8,'34928',14)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(9,'59040',7)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(10,'69926',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(11,'00932',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(12,'70044',11)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(13,'72932',14)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(14,'31454',5)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(22,'71071',14)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(23,'64507',7)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(24,'18880',2)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(25,'87879',4)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(26,'71649',10)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(27,'71946',4)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(28,'23979',1)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(29,'60131',5)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(30,'53605',13)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(31,'18126',11)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(32,'70483',2)
INSERT INTO [ProductColors] ([Id],[ProductId],[ColorId])VALUES(33,'71095',1)
SET IDENTITY_INSERT [ProductColors] OFF

/*Insert vao table ProductImages*/
SET IDENTITY_INSERT [ProductImages] ON
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(1,'50029','50029.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(2,'50029','50029_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(3,'50029','50029_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(4,'50029','50029_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(5,'50029','50029_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(6,'53566','53566.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(7,'53566','53566_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(8,'53566','53566_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(9,'53566','53566_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(10,'53566','53566_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(11,'54277','54277.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(12,'54277','54277_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(13,'54277','54277_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(14,'54277','54277_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(15,'54277','54277_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(16,'55218','55218.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(17,'55218','55218_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(18,'55218','55218_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(19,'55218','55218_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(20,'55218','55218_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(21,'58922','58922.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(22,'58922','58922_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(23,'58922','58922_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(24,'58922','58922_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(25,'58922','58922_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(26,'54934','54934.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(27,'54934','54934_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(28,'54934','54934_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(29,'54934','54934_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(30,'54934','54934_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(31,'34928','34928.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(32,'34928','34928_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(33,'34928','34928_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(34,'34928','34928_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(35,'34928','34928_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(36,'59851','59851.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(37,'59851','59851_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(38,'59851','59851_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(39,'59851','59851_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(40,'59851','59851_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(41,'59851','59851_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(42,'59040','59040.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(43,'59040','59040_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(44,'59040','59040_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(45,'59040','59040_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(46,'59040','59040_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(47,'69926','69926.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(48,'69926','69926_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(49,'69926','69926_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(50,'69926','69926_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(51,'69926','69926_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(52,'00932','00932.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(53,'00932','00932_2,jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(54,'00932','00932_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(55,'00932','00932_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(56,'00932','00932_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(57,'70044','70044.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(58,'70044','70044_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(59,'70044','70044_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(60,'70044','70044_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(61,'70044','70044_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(62,'72932','72932.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(63,'72932','72932_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(64,'72932','72932_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(65,'72932','72932_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(66,'72932','72932_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(67,'31454','31454.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(68,'31454','31454_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(69,'31454','31454_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(70,'31454','31454_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(71,'31454','31454_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(72,'71071','71071.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(73,'71071','71071_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(74,'71071','71071_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(75,'71071','71071_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(76,'71071','71071_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(77,'64507','64507.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(78,'64507','64507_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(79,'64507','64507_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(80,'64507','64507_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(81,'64507','64507_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(82,'18880','18880.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(83,'18880','18880_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(84,'18880','18880_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(85,'18880','18880_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(86,'18880','18880_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(87,'87879','87879.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(88,'87879','87879_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(89,'87879','87879_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(90,'87879','87879_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(91,'87879','87879_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(92,'71649','71649.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(93,'71649','71649_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(94,'71649','71649_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(95,'71649','71649_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(96,'71649','71649_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(97,'71946','71946.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(98,'71946','71946_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(99,'71946','71946_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(100,'71946','71946_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(101,'71946','71946_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(103,'23979','23979.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(104,'23979','23979_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(105,'23979','23979_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(106,'23979','23979_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(107,'23979','23979_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(108,'60131','60131.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(109,'60131','60131_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(110,'60131','60131_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(111,'60131','60131_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(112,'60131','60131_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(113,'53605','53605.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(114,'53605','53605_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(115,'53605','53605_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(116,'53605','53605_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(117,'53605','53605_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(118,'18126','18126.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(119,'18126','18126_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(120,'18126','18126_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(121,'18126','18126_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(122,'18126','18126_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(123,'70483','70483.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(124,'70483','70483_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(125,'70483','70483_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(126,'70483','70483_4.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(127,'70483','70483_5.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(128,'71095','71095.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(129,'71095','71095_2.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(130,'71095','71095_3.jpg')
INSERT INTO [ProductImages] ([Id],[ProductId],[Image])VALUES(131,'71095','71095_4.jpg')
SET IDENTITY_INSERT [ProductImages] OFF

/*Insert vao table ProductSizes*/
SET IDENTITY_INSERT [ProductSizes] ON
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(1,'50029',9,35)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(2,'50029',10,70)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(3,'50029',11,27)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(4,'50029',12,29)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(5,'50029',13,96)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(6,'50029',14,60)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(7,'50029',15,30)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(8,'50029',16,40)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(9,'50029',17,55)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(10,'50029',18,66)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(11,'50029',19,82)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(12,'53566',7,47)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(13,'53566',8,23)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(14,'53566',9,35)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(15,'53566',10,67)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(16,'53566',11,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(17,'53566',12,53)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(18,'53566',13,54)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(19,'53566',14,89)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(20,'53566',15,24)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(21,'54277',8,53)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(22,'54277',9,42)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(23,'54277',10,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(24,'54277',11,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(25,'54277',12,37)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(26,'54277',13,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(27,'55218',8,52)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(28,'55218',9,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(29,'55218',10,83)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(30,'55218',11,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(31,'55218',12,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(32,'55218',13,64)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(33,'55218',14,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(34,'55218',15,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(35,'58922',7,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(36,'58922',8,52)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(37,'58922',9,42)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(38,'58922',10,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(39,'58922',11,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(40,'58922',12,34)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(41,'58922',13,55)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(42,'54934',5,93)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(43,'54934',6,19)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(44,'54934',7,12)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(45,'54934',8,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(46,'54934',9,42)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(47,'54934',10,25)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(48,'54934',11,17)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(49,'54934',12,63)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(57,'34928',8,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(58,'34928',9,72)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(59,'34928',10,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(60,'34928',11,45)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(61,'34928',12,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(62,'34928',13,65)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(63,'34928',14,76)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(64,'34928',15,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(65,'59851',1,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(66,'59851',2,56)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(67,'59851',3,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(68,'59851',4,34)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(69,'59851',5,94)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(70,'59851',6,65)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(71,'59851',7,69)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(72,'59040',8,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(73,'59040',9,44)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(74,'59040',10,34)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(75,'59040',11,54)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(76,'59040',12,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(77,'59040',13,44)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(78,'69926',10,42)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(79,'69926',11,98)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(80,'69926',12,31)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(81,'69926',13,83)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(82,'69926',14,37)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(83,'69926',15,59)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(84,'00932',9,23)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(85,'00932',10,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(86,'00932',11,54)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(87,'00932',12,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(88,'00932',13,66)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(89,'00932',14,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(90,'70044',1,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(91,'70044',2,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(92,'70044',3,34)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(93,'70044',4,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(94,'70044',5,38)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(95,'70044',6,48)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(96,'70044',7,49)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(97,'72932',9,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(98,'72932',10,88)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(99,'72932',11,23)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(100,'72932',12,48)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(101,'72932',13,38)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(102,'72932',14,82)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(103,'31454',7,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(104,'31454',8,93)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(105,'31454',9,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(106,'31454',10,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(107,'31454',11,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(108,'31454',12,33)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(109,'31454',13,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(110,'71071',7,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(111,'71071',8,32)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(112,'71071',9,33)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(113,'71071',10,90)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(114,'71071',11,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(115,'71071',12,38)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(116,'64507',3,23)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(117,'64507',4,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(118,'64507',5,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(119,'64507',6,48)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(120,'64507',7,89)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(121,'64507',8,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(122,'18880',7,28)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(123,'18880',8,43)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(124,'18880',9,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(125,'18880',10,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(126,'18880',11,11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(127,'18880',12,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(128,'18880',13,23)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(129,'87879',9,29)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(130,'87879',10,20)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(131,'87879',11,48)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(132,'87879',12,38)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(133,'87879',13,39)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(134,'87879',14,19)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(135,'71649',3,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(136,'71649',4,89)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(137,'71649',5,78)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(138,'71649',6,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(139,'71649',7,87)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(140,'71946',7,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(141,'71946',8,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(142,'71946',9,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(143,'71946',10,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(144,'71946',11,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(145,'71946',12,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(146,'23979',10,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(147,'23979',11,11)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(148,'23979',12,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(149,'23979',13,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(150,'23979',14,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(151,'23979',15,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(152,'23979',16,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(153,'60131',9,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(154,'60131',10,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(155,'60131',11,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(156,'60131',12,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(157,'60131',13,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(158,'60131',14,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(159,'60131',15,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(160,'53605',9,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(161,'53605',10,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(162,'53605',11,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(163,'53605',12,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(164,'53605',13,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(165,'18126',9,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(166,'18126',10,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(167,'18126',11,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(168,'18126',12,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(169,'18126',13,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(170,'18126',14,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(171,'18126',15,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(172,'70483',8,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(173,'70483',9,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(174,'70483',10,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(175,'70483',11,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(176,'70483',12,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(177,'70483',13,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(178,'71095',3,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(179,'71095',4,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(180,'71095',5,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(181,'71095',6,99)
INSERT INTO [ProductSizes] ([Id],[ProductId],[SizeId],[Quantity])VALUES(182,'71095',7,99)
SET IDENTITY_INSERT [ProductSizes] OFF
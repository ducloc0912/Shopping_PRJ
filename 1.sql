

CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/23/2024 8:18:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Order_date] [date] NULL,
	[Total] [float] NULL,
	[Note] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/23/2024 8:18:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/23/2024 8:18:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Stock] [int] NULL,
	[Image] [ntext] NULL,
	[Description] [nvarchar](1000) NULL,
	[Create_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/23/2024 8:18:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Balance] [float] NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nchar](11) NULL,
	[RoleId] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Shoes')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'T-shirts')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Shirts')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Pants')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Watches')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (6, N'Bags')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (1, 2, CAST(N'2024-03-17' AS Date), 20, N'please careful', N'CLOSE')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (2, 2, CAST(N'2024-03-20' AS Date), 33, N'', N'CLOSE')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (3, 2, CAST(N'2024-05-13' AS Date), 12, N'', N'CLOSE')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (4, 2, CAST(N'2024-03-17' AS Date), 33, N'', N'SHIPPING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (5, 2, CAST(N'2024-03-15' AS Date), 22, N'', N'CLOSE')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (6, 2, CAST(N'2024-04-17' AS Date), 15, N'', N'SHIPPING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (7, 2, CAST(N'2024-03-17' AS Date), 43, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (8, 3, CAST(N'2024-10-23' AS Date), 0, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (9, 3, CAST(N'2024-10-23' AS Date), 0, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (10, 2, CAST(N'2024-10-23' AS Date), 26, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (11, 2, CAST(N'2024-10-23' AS Date), 9, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (12, 2, CAST(N'2024-10-23' AS Date), 26, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (13, 2, CAST(N'2024-10-23' AS Date), 15, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (14, 2, CAST(N'2024-10-23' AS Date), 15, N'', N'PENDING')
INSERT [dbo].[Order] ([Id], [UserId], [Order_date], [Total], [Note], [Status]) VALUES (15, 2, CAST(N'2024-10-23' AS Date), 15, N'', N'PENDING')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (39, 1, 32, 20, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (40, 2, 32, 20, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (41, 3, 32, 20, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (42, 4, 32, 20, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (43, 5, 32, 20, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (44, 6, 33, 15, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (45, 7, 32, 20, 5)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (46, 10, 34, 13, 2)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (47, 11, 32, 9, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (48, 12, 34, 13, 2)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (49, 13, 33, 15, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (50, 14, 33, 15, 1)
INSERT [dbo].[OrderDetail] ([DetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (51, 15, 33, 15, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [Stock], [Image], [Description], [Create_date], [category_id]) VALUES (30, N'Oliver Cheshire is the new face of Marks & Spencer', 12, 97, N'https://i.pinimg.com/564x/33/0f/2c/330f2c43c10374210840ac458f389619.jpg', N'Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.', CAST(N'2024-10-15' AS Date), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Stock], [Image], [Description], [Create_date], [category_id]) VALUES (31, N'Dark Blue', 10, 99, N'https://i.pinimg.com/564x/5e/fa/e4/5efae44c3acd8f926b48c1a0a36270fb.jpg', N'Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.', CAST(N'2024-10-15' AS Date), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Stock], [Image], [Description], [Create_date], [category_id]) VALUES (32, N'Oxford Pant', 9, 86, N'https://i.pinimg.com/564x/0b/98/dc/0b98dc056f784c601f1093592b2f2ce9.jpg', N'Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.', CAST(N'2024-10-15' AS Date), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Stock], [Image], [Description], [Create_date], [category_id]) VALUES (33, N'Rolex Datejust', 15, 96, N'https://i.pinimg.com/564x/18/4b/8e/184b8e2fd6fbd974e3c56f38a9663755.jpg', N'Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.', CAST(N'2024-10-15' AS Date), 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Stock], [Image], [Description], [Create_date], [category_id]) VALUES (34, N'Gold Luxury Rolex', 13, 195, N'https://i.pinimg.com/564x/37/bd/9f/37bd9f274847f4010155bd7f6b90f88c.jpg', N'Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.', CAST(N'2024-10-15' AS Date), 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Stock], [Image], [Description], [Create_date], [category_id]) VALUES (35, N'Everose Gold Rolex', 11, 100, N'https://i.pinimg.com/564x/23/dc/2b/23dc2b6209c850d23fe14c5c451d7330.jpg', N'Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.', CAST(N'2024-10-15' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [Balance], [Fullname], [Address], [Phone], [RoleId]) VALUES (2, N'abc', N'123', 99794, N'ABC', N'Ha Noi', N'0378387199 ', N'US')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Balance], [Fullname], [Address], [Phone], [RoleId]) VALUES (3, N'admin', N'123', NULL, N'Admin', N'Ho Chi Minh', N'0378387199 ', N'AD')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Balance], [Fullname], [Address], [Phone], [RoleId]) VALUES (4, N'staff1', N'123', NULL, N'Minh Hoang', N'Ha Noi', N'123456789  ', N'STF')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Balance], [Fullname], [Address], [Phone], [RoleId]) VALUES (5, N'staff2', N'123', NULL, N'Minh Hoang', N'Ha Noi', N'123456789  ', N'STF')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Balance], [Fullname], [Address], [Phone], [RoleId]) VALUES (6, N'test', N'123', NULL, N'Test', N'Ha Noi', N'0123456789 ', N'US')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Balance], [Fullname], [Address], [Phone], [RoleId]) VALUES (7, N'zzz', N'123', NULL, N'Iced Vanila Latte Sweet', N'Ha Noi', N'123456789  ', N'US')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Balance], [Fullname], [Address], [Phone], [RoleId]) VALUES (11, N'staff3', N'123', NULL, N'Dang Duc Loi', N'Ho Chi Minh', N'0987654321 ', N'STF')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]


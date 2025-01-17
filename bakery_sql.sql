USE [master]
GO
/****** Object:  Database [Bakery]    Script Date: 12/19/2019 21:40:37 ******/
CREATE DATABASE [Bakery] ON  PRIMARY 
( NAME = N'ClothingShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClothingShop.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClothingShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClothingShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bakery] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bakery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bakery] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Bakery] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Bakery] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Bakery] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Bakery] SET ARITHABORT OFF
GO
ALTER DATABASE [Bakery] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Bakery] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Bakery] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Bakery] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Bakery] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Bakery] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Bakery] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Bakery] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Bakery] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Bakery] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Bakery] SET  DISABLE_BROKER
GO
ALTER DATABASE [Bakery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Bakery] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Bakery] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Bakery] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Bakery] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Bakery] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Bakery] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Bakery] SET  READ_WRITE
GO
ALTER DATABASE [Bakery] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Bakery] SET  MULTI_USER
GO
ALTER DATABASE [Bakery] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Bakery] SET DB_CHAINING OFF
GO
USE [Bakery]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/19/2019 21:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProId] [nvarchar](20) NOT NULL,
	[ProName] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[ImgUrl] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-01', N'BBQ Chicken', 15000, N'Available', N'img/piz-1.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Pizza', 50)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-02', N'Smoky Beef Sausage', 25000, N'Available', N'img/piz-2.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Pizza', 100)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-03', N'Baguette', 30000, N'Available', N'img/c3.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Bread', 84)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-04', N'Poppy Challah', 25000, N'Available', N'img/c4.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Bread', 20)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-05', N'Regular Challah', 25000, N'Available', N'img/bur-1.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Burger', 56)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-06', N'Jerusalem Baguette', 30000, N'Available', N'img/bur-2.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Burger', 40)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-07', N'100% Rye BreadNorthern Sea Rye Bread', 23000, N'Available', N'img/chick-1.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Chicken', 98)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-08', N'Chicken Fired', 70000, N'Available', N'img/chick-2.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Chicken', 63)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-10', N'Paprika Chicken', 55000, N'Available', N'img/piz-3.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Pizza', 20)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-11', N'Pepperoni & Mushroom', 15000, N'Available', N'img/piz-4.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Pizza', 30)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-12', N'Chicken Kebab', 27000, N'Available', N'img/piz-5.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Pizza', 24)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-13', N'Festive Challah', 28000, N'Available', N'img/bur-3.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Burger', 56)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-14', N'Extreme Cheesy Whopper', 60000, N'Available', N'img/bur-4.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Burger', 80)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-15', N'Chees Fires', 70000, N'Available', N'img/bur-5.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Burger', 80)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-16', N'Poppy Challah', 25000, N'Available', N'img/c1.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Bread', 25)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-17', N'Poppy Challah', 30000, N'Available', N'img/c2.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Bread', 88)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-18', N'COMBO FRIED CHICKEN C', 70000, N'Available', N'img/chick-3.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Chicken', 70)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-19', N'COMBO FRIED CHICKEN B', 13000, N'Available', N'img/chick-4.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Chicken', 40)
INSERT [dbo].[Product] ([ProId], [ProName], [Price], [Status], [ImgUrl], [Description], [CategoryId], [Quantity]) VALUES (N'Pro-20', N'COMBO FRIED CHICKEN A', 15000, N'Available', N'img/chick-5.jpg', N'Usage of the Internet is becoming more common due to rapid advance. Usage of the Internet is becoming more common due to rapid advance.', N'Chicken', 20)
/****** Object:  Table [dbo].[Account]    Script Date: 12/19/2019 21:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[RoleID] [nvarchar](10) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Img] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin1', N'1', N'admin', N'Admin Test 1', CAST(0x431E0B00 AS Date), N'229 Luy Ban Bich St., Hoa Thanh Ward', N'denton@sbcglobal.net', N'face2.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin2', N'2', N'admin', N'Admin Test 2', CAST(0x22210B00 AS Date), N'106A Nguyen Dinh Chieu, Dakao Ward, Dist.1', N'iamcal@verizon.net', N'face5.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin3', N'3', N'admin', N'Admin Test 3', CAST(0xFC230B00 AS Date), N'Floor 6, 8 Nguyen Hue, Ben Nghe Ward', N'sthomas@msn.com', N'face6.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'admin4', N'4', N'admin', N'Admin Test 4', CAST(0x2C170B00 AS Date), N'420 Nguyen An Ninh', N'jaarnial@icloud.com', N'face7.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user1', N'1', N'user', N'Clara Simon', CAST(0x4A160B00 AS Date), N'8 Hoang Van Thu Street', N'portscan@optonline.net', N'face19.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user2', N'2', N'user', N'Ayomide Gibbons', CAST(0x26210B00 AS Date), N'114 Nguyen Phi Khanh Street, Tan Dinh Ward, District 1', N'amcuri@me.com', N'face3.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user3', N'3', N'user', N'Cienna Hurst', CAST(0x6C110B00 AS Date), N'409 Anderson St', N'mhanoh@gmail.com', N'face8.jpg')
INSERT [dbo].[Account] ([Username], [Password], [RoleID], [Fullname], [DOB], [Address], [Email], [Img]) VALUES (N'user4', N'4', N'user', N'Akshay Roach', CAST(0x34060B00 AS Date), N'461 Shelton St', N'alastair@hotmail.com', N'face9.jpg')
/****** Object:  Table [dbo].[Order]    Script Date: 12/19/2019 21:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [nvarchar](20) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Total] [float] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[PaymentId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'70AOL9C4', CAST(0x83400B00 AS Date), N'user1', N'Processing', 528010, N'Address Test', N'Visa')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'A9YHHNFE', CAST(0x83400B00 AS Date), N'user1', N'Delivered', 355425.5, N'Address Test', N'Visa')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-01', CAST(0x7F400B00 AS Date), N'user1', N'Processing', 40000, N'Dist. 9, HCMC', N'Paypal')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-02', CAST(0x7E400B00 AS Date), N'user2', N'Processing', 12341, N'Dist. 5, HCMC', N'COD')
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Username], [Status], [Total], [Address], [PaymentId]) VALUES (N'O-03', CAST(0x7E400B00 AS Date), N'user3', N'Processing', 46000, N'Dist. 1, HCMC', N'Visa')
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/19/2019 21:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [nvarchar](20) NOT NULL,
	[ProId] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'70AOL9C4', N'Pro-03', 16, N'Delivered')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'A9YHHNFE', N'Pro-06', 5, N'Delivered')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-01', N'Pro-01', 11, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-01', N'Pro-02', 100, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-02', N'Pro-05', 12, N'Processing')
INSERT [dbo].[OrderDetail] ([OrderId], [ProId], [Quantity], [Status]) VALUES (N'O-03', N'Pro-07', 5, N'Processing1')
/****** Object:  ForeignKey [FK_Order_Account]    Script Date: 12/19/2019 21:40:37 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 12/19/2019 21:40:37 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 12/19/2019 21:40:37 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProId])
REFERENCES [dbo].[Product] ([ProId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO

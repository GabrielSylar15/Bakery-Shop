USE [master]
GO
/****** Object:  Database [Sum22_SWP391_BakeryShop]    Script Date: 15-Jun-22 6:59:56 AM ******/
CREATE DATABASE [Sum22_SWP391_BakeryShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sum22_SWP391_BakeryShop', FILENAME = N'F:\DEV\DEV_Apps\SSMS\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sum22_SWP391_BakeryShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sum22_SWP391_BakeryShop_log', FILENAME = N'F:\DEV\DEV_Apps\SSMS\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sum22_SWP391_BakeryShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sum22_SWP391_BakeryShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET RECOVERY FULL 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET  MULTI_USER 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sum22_SWP391_BakeryShop', N'ON'
GO
USE [Sum22_SWP391_BakeryShop]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Cart_1] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Detail]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Detail](
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CartID] [int] NOT NULL,
 CONSTRAINT [PK_Cart_Detail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderDetailID] [int] NOT NULL,
	[RatedStar] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[FeedbackStatus] [int] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[Tittle] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[SaleId] [int] NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[SaleNote] [text] NULL,
	[LastUpdated] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Discount] [float] NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[PostCategoryID] [int] NULL,
	[Thumbnail] [nvarchar](max) NULL,
	[PostTitle] [nvarchar](max) NULL,
	[BriefInformation] [nvarchar](max) NULL,
	[PostDescription] [nvarchar](max) NULL,
	[Featured] [nvarchar](max) NULL,
	[PostDate] [date] NULL,
	[UpdateDate] [date] NULL,
	[PostStatus] [bit] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Category]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Category](
	[PostCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[PostCategoryName] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Post_Category] PRIMARY KEY CLUSTERED 
(
	[PostCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [ntext] NOT NULL,
	[Status] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Thumbnail] [nvarchar](max) NOT NULL,
	[Weight] [int] NOT NULL,
	[Degree] [int] NOT NULL,
	[Time] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Image]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Image](
	[ProductImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Product_Image] PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderId] [int] NOT NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NOT NULL,
	[PostID] [int] NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Backlink] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 15-Jun-22 6:59:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[token] [nvarchar](50) NULL,
	[expiration] [datetime] NULL,
	[address] [nvarchar](max) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([CartId], [UserId]) VALUES (2, 2)
INSERT [dbo].[Cart] ([CartId], [UserId]) VALUES (3, 3)
INSERT [dbo].[Cart] ([CartId], [UserId]) VALUES (4, 5)
GO
INSERT [dbo].[Cart_Detail] ([ProductID], [Quantity], [CartID]) VALUES (6, 3, 2)
INSERT [dbo].[Cart_Detail] ([ProductID], [Quantity], [CartID]) VALUES (11, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Status]) VALUES (5, N'Bready', 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Status]) VALUES (6, N'Pinpool', 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Status]) VALUES (7, N'Deliciuex', 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Status]) VALUES (8, N'Cake', 1)
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Status]) VALUES (9, N'Cupke', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Feedback] ([FeedbackId], [UserId], [OrderDetailID], [RatedStar], [ProductId], [FeedbackStatus], [UpdateDate], [Tittle], [Note]) VALUES (1, 1, 1, 1, 1, 1, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'	Flatbread', N'good')
INSERT [dbo].[Feedback] ([FeedbackId], [UserId], [OrderDetailID], [RatedStar], [ProductId], [FeedbackStatus], [UpdateDate], [Tittle], [Note]) VALUES (2, 1, 1, 2, 2, 1, CAST(N'2022-05-04T00:00:00.000' AS DateTime), N'Afghanistan', N'A circular flatbread made with sweet potatoes.')
INSERT [dbo].[Feedback] ([FeedbackId], [UserId], [OrderDetailID], [RatedStar], [ProductId], [FeedbackStatus], [UpdateDate], [Tittle], [Note]) VALUES (3, 1, 1, 4, 4, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'	Italy', N'A thin crepe now made with milk, eggs (sometimes omitted), flour and salt. Originally a food eaten by the poor and made with flour and water.')
INSERT [dbo].[Feedback] ([FeedbackId], [UserId], [OrderDetailID], [RatedStar], [ProductId], [FeedbackStatus], [UpdateDate], [Tittle], [Note]) VALUES (4, 1, 1, 5, 3, 1, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'Sourdough', N'A  dark brown sourdough rye bread, traditionally sweetened with molasses and flavored with coriander and caraway seeds.')
INSERT [dbo].[Feedback] ([FeedbackId], [UserId], [OrderDetailID], [RatedStar], [ProductId], [FeedbackStatus], [UpdateDate], [Tittle], [Note]) VALUES (5, 1, 1, 4, 6, 1, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'From the French for "ball".', N'Short, oblong or round, served usually before or with meals, often with butter.')
INSERT [dbo].[Feedback] ([FeedbackId], [UserId], [OrderDetailID], [RatedStar], [ProductId], [FeedbackStatus], [UpdateDate], [Tittle], [Note]) VALUES (6, 2, 3, 5, 4, 1, CAST(N'2023-05-10T00:00:00.000' AS DateTime), N'Enjoy', N'delicious')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (2, 2, NULL, N'Done', CAST(N'2021-01-01' AS Date), NULL, NULL)
INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (3, 2, NULL, N'Pending', CAST(N'2022-01-02' AS Date), NULL, NULL)
INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (4, 2, NULL, N'Done', CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (8, 4, NULL, N'Done', CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (9, 4, NULL, N'Pending', CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (11, 2, NULL, N'Done', CAST(N'2020-01-01' AS Date), NULL, NULL)
INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (12, 2, NULL, N'Done', CAST(N'2020-02-02' AS Date), NULL, NULL)
INSERT [dbo].[Order] ([OrderId], [UserId], [SaleId], [OrderStatus], [OrderDate], [SaleNote], [LastUpdated]) VALUES (14, 2, NULL, N'Done', CAST(N'2020-02-02' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (32, 2, 1, 1, 5.0000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (33, 2, 2, 0, 7.0000, 3)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (34, 2, 3, 0, 10.0000, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (30, 2, 7, 0.6, 2.0000, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (35, 3, 1, 0, 5.0000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (33, 3, 2, 0.2, 3.6000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (31, 3, 4, 0.2, 4.0000, 4)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (32, 3, 5, 0, 2.4000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (36, 3, 6, 1, 100.0000, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (34, 4, 1, 0, 7.5000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (37, 4, 4, 200, 2.0000, 7)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (42, 8, 2, 0.5, 5.6000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (41, 8, 3, 0, 4.4000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (43, 9, 10, 0.4, 7.4000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (38, 11, 1, 0, 5.0000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (39, 11, 2, 0, 7.0000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (46, 11, 13, 0.4, 4.0000, 2)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (40, 12, 1, 0, 5.0000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (49, 12, 4, 0.1, 5.6000, 3)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (47, 12, 5, 0.2, 7.4000, 4)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (48, 12, 6, 0, 6.0000, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (50, 12, 8, 0.6, 7.4000, 5)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Discount], [Price], [Quantity]) VALUES (41, 14, 1, 0, 5.0000, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (2, 1, 1, N'https://drive.google.com/uc?export=view&id=1TIQkuMCEk8m6MDUxEVKLavmCmTgKc9aa', N'Mauris elementum accumsanleo vel temporsa', N'Class aptent taciti sociosqu ad litora torquent per. Conubia vitae viverra urna nulla sed turpis .Mauris elementum accumsan leo vel tempor', N'<h1>Sed id interdum urna. Nam ac elit a ante commodo tristique.</h1>

<p>Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus. Sed vel nulla non neque dictum imperdiet.Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse faucibus sed dolor eget posuere.Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet.Vestibulum imperdiet nibh vel magna lacinia ultrices. Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
', NULL, CAST(N'2022-12-30' AS Date), CAST(N'2022-06-15' AS Date), 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (4, 2, 2, N'https://drive.google.com/uc?export=view&id=1vbu0WOd1Y-012lD4d6Ab46M-i10XcDSw', N'Perfect summery bruschetta – with a garlicky Greek twist', N'Maple syrup-grilled aubergines and a thick layer of skordalia – garlicky Greek paste from heaven – makes this freewheeling vegetarian bruschetta recipe, says Joe Yonan', N'	<h1> Sed id interdum urna. Nam ac elit a ante commodo tristique. </h1>
<p>Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus. Sed vel nulla non neque dictum imperdiet.Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse faucibus sed dolor eget posuere.Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet.Vestibulum imperdiet nibh vel magna lacinia ultrices. Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', N'Sed vel nulla non neque dictum imperdiet.', CAST(N'2022-05-29' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (9, 3, 1, N'https://drive.google.com/uc?export=view&id=1dfMqMfNeC81bA13f9rq5fuEkcP60tolG', N'Bakery chain expanding range of products made from food waste', N'The bakery has promised at least 25 new products over the coming year as part of its drive to become a zero-waste business', N'Artisan bakery chain Gail’s is expanding its product range made from food waste in a bid to recycle surplus ingredients from its supply chain. Gail’s has promised at least 25 new products over the coming year as part of its eco-conscious baking line as it hopes to become a zero-waste business. A hot cross bun bacon buttie is among the new additions. The bakery, which currently trades from 53 locations across London, Oxford, Brighton, Farnham and Wokingham, launched the UK’s first loaf made from leftover bread in 2018, in a bid to cut down on food waste. Named “Waste Bread”, the sourdough is made by turning day-old unsold loaves into breadcrumbs, before making them into a porridge-type mix. This is then added to a fresh white sourdough dough, resulting in a fresh loaf with the recycled bread making up a third of its ingredients. The 750g loaves cost £4.20 each. Since launching the recycled loaf at select London bakeries, the company has expanded its waste-reducing range to feature other products, including baguettes turned into croutons and savoury crackers made with leftover cheese rinds. This move comes at a time when other food companies are launching eco initiatives in a drive to be more sustainable. Last week, Marks & Spencer announced it will be extending its “bring your own container” scheme which allows shoppers to refill their own food containers to avoid plastic waste. The trial took place in a Southampton store and was met positively by shoppers. The retailer said that 25 of its 44 “fill your own” products were outselling the packaged alternatives. In the UK, we throw away 10.2m tonnes of food waste each year, creating more than 20m tonnes of greenhouse gas emissions. The circular economy model, which Gail’s waste-reducing range practices, is increasingly being used in the food industry, as well as in fashion.It hopes to keep resources – whether that be clothing material or food ingredients – in the supply chain for as long as possible in order to avoid waste.', N'nSuspendisse faucibus sed dolor eget posuere.Sed id interdum urna.', CAST(N'2022-05-31' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (10, 1, 2, N'https://drive.google.com/uc?export=view&id=1SsD2IV8BTGF3qEXIv7Cr4Jep8kYX2kUk', N'Bakery launches UK''s first insect bread made from hundreds of crickets', N'Nutritionist says insects are ''valuable source of essential fats''', N'A British bakery has become the first in the UK to launch a loaf of bread made from hundreds of crickets. The limited-edition batch of “Crunchy Cricket” loaves have been created by Roberts Bakery in Norwich and are made using cricket flour, which is supplied by Eat Grub – the UK’s leading insect food brand. According to Roberts Bakery, each loaf of bread contains around 336 crickets, which are dried, ground, mixed with wheat flour and grains and then baked to become what it claims is a “a tremendously tasty loaf with a crunchy finish”. “Crickets are a really new and exciting food ingredient,” said Stuart Spencer-Calnan, managing director of the bakery. “They’re incredibly good for you and actually really tasty, despite what people might think.” Spencer-Calnan added that he thinks people will be “pleasantly surprised” if they try the new loaves and that, so far, the feedback the bakery has received has been “really positive”. As well as being good for gut health, food experts claim that crickets are packed with nutrients and that the bread made from them contains more protein than a standard loaf. “As well as having very strong sustainability and environmental credentials, insects are also seriously tasty and shouldn’t be overlooked as a great recipe ingredient,” said Alison Ordonez, head of innovation at Roberts Bakery. “Our Cricket Loaf provides consumers with a good source of protein and an easy way to familiarise themselves with insect-based food.” Clinical nutritionist Adele Wolstenhulme agrees, adding that insects have long-been considered a daily staple “through the lens of human evolution”. “We are simply returning to our ancestral dietary roots,” Wolstenhulme said. “Given climate change and sustainability issues around meat, we are becoming more aware of the need to seek out alternative protein sources and we shouldn’t dismiss the valuable sources of essential fats that these critters also offer in abundance. “And, when considering the amount of pressure on land and resources, we should be fully embracing insects as ‘superfoods’.”
Insect-eating, or entomophagy, is becoming increasingly common in large parts of the world.
Last year, the United Nations estimated that at least two billion people eat insects – with many having eaten them traditionally for generations – and more than 1,900 species are used for food.
The UN added that insects are also a popular choice amongst those who want to protect the environment because farming insects uses less land, water and feed than conventional livestock farming.
Celebrities who have supported the consumption of insects in the past include Nicole Kidman, Angelina Jolie, Justin Timberlake and Katy Perry.', N'Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus.', CAST(N'2022-05-30' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (11, 3, 1, N'https://drive.google.com/uc?export=view&id=1Etw8J4a6ELepLMNdBUydpw78cijEE2tw', N'Toast bread straight from freezer, anti-waste campaign urges', N'Save your bread from the bin', N'People are being urged to toast bread straight from the freezer in order to reduce unnecessary waste. It’s always frustrating when you go to make yourself some toast, only to find that your bread has gone stale or worse, mouldy. Approximately 24 million slices of bread are thrown away in the UK every day as a result of people not using their bread in time. However, there is a really simple fix to rectify this issue. Love Food Hate Waste has launched the “Make Toast Not Waste” campaign, which aims to educate the nation about how they can keep their bread fresh for longer. A recent consumer poll commissioned by Love Food Hate Waste of 1,000 adults in the UK discovered that 69 per cent of 18 to 34-year-olds throw bread away every single week, with one in four people confessing that they don’t know how to freeze bread. According to previous research conducted by charity organisation Wrap, the amount of bread wasted by the nation could be drastically reduced if every person in the UK wasted three fewer slices of bread a week. By toasting bread the moment it’s taken out of the freezer, you can ensure that you don’t run the risk of having to throw it out. “Love Food Hate Waste’s latest campaign, ‘Make Toast Not Waste’ is looking to help people waste less bread as a whopping 24 million slices of bread are thrown away every day in the UK!” said Sarah Clayton, head of products and services at Wrap. “Half of this waste is a result of people not getting around to using it in time. “We can all do our bit to bin less bread by popping it in the freezer to keep it for much longer, and you can even use bread straight from the freezer to make toast, without needing to defrost it first.” Love Food Hate Waste has shared a number of tasty recipes on its website in the hope that they will inspire more people to be less wasteful. The amount of garbage that is routinely thrown away in rubbish bins on a daily basis could have been recycled, a recent report revealed. According to Zero Waste Scotland, 670,000 tonnes of everyday household waste that accumulated over a year could have been processed using standard recycling services. Sending rubbish to landfill can cost local authorities an estimate of £54m a year.
 
 

', N'Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus.', CAST(N'2022-05-31' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (14, 2, 2, N'https://drive.google.com/uc?export=view&id=1TIQkuMCEk8m6MDUxEVKLavmCmTgKc9aa', N'8 best bread knives to make light work of more than just loaves', N'To help slice your sourdough perfectly, brands such as Victorinox and Robert Welch have the serrated blades you need ', N'If you spent lockdown perfecting sourdough, you’ll know that you need a good bread knife to do your creation justice. With its tough crust and squishy interior, bread can be a tricky object to cut without squashing the whole thing flat. In order to slice through your loaf with ease, you need a dedicated bread knife that’s up to the job. The typical bread knife has a long, serrated blade, enabling you to glide through stacks of sandwiches in one stroke. It should also make it easier to get pleasingly uniform slices. It’s versatile too, doubling up us a carving knife (you’ll wonder how you ever cut through crackling without one) and they also work particularly well with pineapples. When putting our knives to the test we tried them out on a variety of bakes. From those with tough crusts to the super squidgy, we also sliced our way through bagels and rolls, each time checking how much pressure we needed to apply and how uniform the slices were. We’ve rounded up a selection of super-smooth slicers whatever your budget. You can trust our independent reviews. We may earn commission from some of the retailers, but we never allow this to influence selections, which are formed from real-world testing and expert advice. This revenue helps to fund journalism across The Independent.
Tomita Japanese bread knife:
With a choice of two blade lengths (22cm or 30cm), this Japanese bread knife from Tomita is similar to Opinel’s version (below) but we think it’s that bit better. The long, serrated-steel blade is generous and sharp, cutting through our bread with ease, and we found the dark wooden handle both good-looking and easy to grip. It comes with a good quality plastic sheath, which we store the knife in when not being used, to keep it super sharp. A beautiful buy, we think this would also make a lovely housewarming gift. 

Opinel wooden handle bread knife:
This family-run French company is known for its excellent value, smart, functional knives. The beautiful beech handle is a little lighter in colour than the Japanese version above and the stainless-steel blade a little shorter at 20cm – which some will prefer, particularly if you tend to go for little loaves or bagels. Strong and efficient, this is simply a great bread knife weighing in at 250g.
Zwilling pro bread knife:
The brand of choice for many professional chefs, the Zwilling range doesn’t come cheap but having tried their bread knife, we’re confident it will last for years. The 20cm blade has been made with ice-hardened steel to make it extra tough without being brittle (stopping it from chipping) and features a bevelled edge, which helped us cut neat slices every time. The handle is good quality plastic, with an exposed tang (the portion of the blade that goes into the handle). Overall the knife felt balanced and well weighted (222g).
Lakeland select grip Japanese steel bread knife:
If you want an affordable option that will get the job done, this own brand knife from Lakeland is ideal. Crafted from Japanese stainless steel, the 20cm blade is powerful and has undergone an ice-hardening process (but at a fraction of the cost of Zwilling). The grippy rubberised handle makes it safe to use even if you have wet hands. Excellent value and it comes with a three-year guarantee. 
Robert Welch signature bread knife:
To make sure they were really hitting the nail on the head, Robert Welch called in a bunch of professional chefs to ask for feedback, It decided on a sharp German stainless steel for the 22cm blade, with a full tang for optimum balance. The ergonomic black plastic handle is comfortable to use and makes it dishwasher safe (although we’d always recommend washing by hand). Like all knives in the range, it comes in a gift box. 
Global g series bread knife:
A blow-the-budget option for the serious chef, this brand is used in many top kitchens around the world. Fully stainless steel, right down to the dimpled handle, this is a classic bread knife shape with a 22cm blade. The serration has been set up for right-handers and the design makes sure you’ll get a straighter slice. Beautifully weighted (136g) and super sharp, this is a dream to use. 
Victorinox Swiss classic bread knife:
Better known for making swiss army knives, the brand also produces good quality kitchen knives. Sure, the handle is a little plasticky, but it’s ergonomic and the 21cm blade is efficient. Overall, it’s pretty light at 107g. It also comes in a wide range of colours, including orange, yellow, green and pink – making it nice and easy to see in the drawer. 
Pallares bread knife:
Beautifully simple, this 22cm blade has a wide scalloped stainless-steel blade, which handled most bread well, without too much pressure. The stripped-back pale boxwood handle is crafted in Catalonia, specifically at the cuchillería Pallares workshop, which was set up by a couple of brothers and is still a small family-run operation. 
', N'Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus.', CAST(N'2022-05-28' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (15, 2, 1, N'D:/Active Project/src/web/View/uploads/Tra cá»©u giÃ¡ trá»‹ sá»­ dá»¥ng tháº» BHYT - Google Chrome 04-May-22 3_11_17 PM.png', N'', N'1', N'<p>a</p>
', NULL, CAST(N'2022-06-14' AS Date), NULL, 0)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (16, 2, 1, N'uploads/Tra cá»©u giÃ¡ trá»‹ sá»­ dá»¥ng tháº» BHYT - Google Chrome 04-May-22 3_11_17 PM.png', N'', N'1', N'<p>a</p>
', NULL, CAST(N'2022-06-14' AS Date), NULL, 0)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (17, 2, 2, N'/src/uploads/48.300 háº£i phÃ²ng.xls  [Compatibility Mode] - Excel 16-May-22 3_55_10 PM.png', N'a', N'v', N'<p>z</p>
', NULL, CAST(N'2022-06-14' AS Date), CAST(N'2022-06-15' AS Date), 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (38, 2, 1, N'/src/assests/img/Post/2.jpg', N'Introduce about shop', N'Introduces', N'Baked goods have been around for thousands of years. The art of baking was developed early during the Roman Empire. It was a highly famous art as Roman citizens loved baked goods and demanded them frequently for important occasions such as feasts and weddings. Because of the fame of the art of baking, around 300 BC, baking was introduced as an occupation and respectable profession for Romans. Bakers began to prepare bread at home in an oven, using mills to grind grain into flour for their breads. The demand for baked goods persisted, and the first bakers'' guild was established in 168 BC in Rome. The desire for baked goods promoted baking throughout Europe and expanded into eastern parts of Asia. Bakers started baking bread and other goods at home and selling them on the streets.', N'Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus.', CAST(N'2022-05-31' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (39, 2, 1, N'/src/assests/img/Post/3.jpg', N'Perfect summery bruschetta – with a garlicky Greek twist', N'The bakery has promised at least 25 new products over the coming year as part of its drive to become a zero-waste business', N'Artisan bakery chain Gail’s is expanding its product range made from food waste in a bid to recycle surplus ingredients from its supply chain. Gail’s has promised at least 25 new products over the coming year as part of its eco-conscious baking line as it hopes to become a zero-waste business. A hot cross bun bacon buttie is among the new additions. The bakery, which currently trades from 53 locations across London, Oxford, Brighton, Farnham and Wokingham, launched the UK’s first loaf made from leftover bread in 2018, in a bid to cut down on food waste. Named “Waste Bread”, the sourdough is made by turning day-old unsold loaves into breadcrumbs, before making them into a porridge-type mix. This is then added to a fresh white sourdough dough, resulting in a fresh loaf with the recycled bread making up a third of its ingredients. The 750g loaves cost £4.20 each. Since launching the recycled loaf at select London bakeries, the company has expanded its waste-reducing range to feature other products, including baguettes turned into croutons and savoury crackers made with leftover cheese rinds. This move comes at a time when other food companies are launching eco initiatives in a drive to be more sustainable. Last week, Marks & Spencer announced it will be extending its “bring your own container” scheme which allows shoppers to refill their own food containers to avoid plastic waste. The trial took place in a Southampton store and was met positively by shoppers. The retailer said that 25 of its 44 “fill your own” products were outselling the packaged alternatives. In the UK, we throw away 10.2m tonnes of food waste each year, creating more than 20m tonnes of greenhouse gas emissions. The circular economy model, which Gail’s waste-reducing range practices, is increasingly being used in the food industry, as well as in fashion.It hopes to keep resources – whether that be clothing material or food ingredients – in the supply chain for as long as possible in order to avoid waste.', N'Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus.', CAST(N'2022-05-30' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (40, 2, 1, N'/src/assests/img/Post/4.jpg', N'Perfect summery bruschetta – with a garlicky Greek twist', N'Maple syrup-grilled aubergines and a thick layer of skordalia – garlicky Greek paste from heaven – makes this freewheeling vegetarian bruschetta recipe, says Joe Yonan', N'People are being urged to toast bread straight from the freezer in order to reduce unnecessary waste. It’s always frustrating when you go to make yourself some toast, only to find that your bread has gone stale or worse, mouldy. Approximately 24 million slices of bread are thrown away in the UK every day as a result of people not using their bread in time. However, there is a really simple fix to rectify this issue. Love Food Hate Waste has launched the “Make Toast Not Waste” campaign, which aims to educate the nation about how they can keep their bread fresh for longer. A recent consumer poll commissioned by Love Food Hate Waste of 1,000 adults in the UK discovered that 69 per cent of 18 to 34-year-olds throw bread away every single week, with one in four people confessing that they don’t know how to freeze bread. According to previous research conducted by charity organisation Wrap, the amount of bread wasted by the nation could be drastically reduced if every person in the UK wasted three fewer slices of bread a week. By toasting bread the moment it’s taken out of the freezer, you can ensure that you don’t run the risk of having to throw it out. “Love Food Hate Waste’s latest campaign, ‘Make Toast Not Waste’ is looking to help people waste less bread as a whopping 24 million slices of bread are thrown away every day in the UK!” said Sarah Clayton, head of products and services at Wrap. “Half of this waste is a result of people not getting around to using it in time. “We can all do our bit to bin less bread by popping it in the freezer to keep it for much longer, and you can even use bread straight from the freezer to make toast, without needing to defrost it first.” Love Food Hate Waste has shared a number of tasty recipes on its website in the hope that they will inspire more people to be less wasteful. The amount of garbage that is routinely thrown away in rubbish bins on a daily basis could have been recycled, a recent report revealed. According to Zero Waste Scotland, 670,000 tonnes of everyday household waste that accumulated over a year could have been processed using standard recycling services. Sending rubbish to landfill can cost local authorities an estimate of £54m a year.
 
 

', N'Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus.', CAST(N'2022-05-29' AS Date), NULL, 1)
INSERT [dbo].[Post] ([PostId], [UserID], [PostCategoryID], [Thumbnail], [PostTitle], [BriefInformation], [PostDescription], [Featured], [PostDate], [UpdateDate], [PostStatus]) VALUES (41, 2, 1, N'/src/assests/img/Post/5.jpg', N'Toast bread straight from freezer, anti-waste campaign urges', N'Save your bread from the bin', N'A British bakery has become the first in the UK to launch a loaf of bread made from hundreds of crickets. The limited-edition batch of “Crunchy Cricket” loaves have been created by Roberts Bakery in Norwich and are made using cricket flour, which is supplied by Eat Grub – the UK’s leading insect food brand. According to Roberts Bakery, each loaf of bread contains around 336 crickets, which are dried, ground, mixed with wheat flour and grains and then baked to become what it claims is a “a tremendously tasty loaf with a crunchy finish”. “Crickets are a really new and exciting food ingredient,” said Stuart Spencer-Calnan, managing director of the bakery. “They’re incredibly good for you and actually really tasty, despite what people might think.” Spencer-Calnan added that he thinks people will be “pleasantly surprised” if they try the new loaves and that, so far, the feedback the bakery has received has been “really positive”. As well as being good for gut health, food experts claim that crickets are packed with nutrients and that the bread made from them contains more protein than a standard loaf. “As well as having very strong sustainability and environmental credentials, insects are also seriously tasty and shouldn’t be overlooked as a great recipe ingredient,” said Alison Ordonez, head of innovation at Roberts Bakery. “Our Cricket Loaf provides consumers with a good source of protein and an easy way to familiarise themselves with insect-based food.” Clinical nutritionist Adele Wolstenhulme agrees, adding that insects have long-been considered a daily staple “through the lens of human evolution”. “We are simply returning to our ancestral dietary roots,” Wolstenhulme said. “Given climate change and sustainability issues around meat, we are becoming more aware of the need to seek out alternative protein sources and we shouldn’t dismiss the valuable sources of essential fats that these critters also offer in abundance. “And, when considering the amount of pressure on land and resources, we should be fully embracing insects as ‘superfoods’.”
Insect-eating, or entomophagy, is becoming increasingly common in large parts of the world.
Last year, the United Nations estimated that at least two billion people eat insects – with many having eaten them traditionally for generations – and more than 1,900 species are used for food.
The UN added that insects are also a popular choice amongst those who want to protect the environment because farming insects uses less land, water and feed than conventional livestock farming.
Celebrities who have supported the consumption of insects in the past include Nicole Kidman, Angelina Jolie, Justin Timberlake and Katy Perry.', N'Sed id interdum urna. Nam ac elit a ante commodo tristique. Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus.', CAST(N'2022-05-29' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Post_Category] ON 

INSERT [dbo].[Post_Category] ([PostCategoryID], [PostCategoryName], [Status]) VALUES (1, N'LIVING INTERIOR', 1)
INSERT [dbo].[Post_Category] ([PostCategoryID], [PostCategoryName], [Status]) VALUES (2, N'ARCHITECTURE', 1)
INSERT [dbo].[Post_Category] ([PostCategoryID], [PostCategoryName], [Status]) VALUES (4, N'LIFE STYLE', 1)
INSERT [dbo].[Post_Category] ([PostCategoryID], [PostCategoryName], [Status]) VALUES (5, N'MAGAZINE FURNITURE', 1)
INSERT [dbo].[Post_Category] ([PostCategoryID], [PostCategoryName], [Status]) VALUES (6, N'BEDROOM STYLE', 1)
SET IDENTITY_INSERT [dbo].[Post_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (1, N'Anadama breadd', N'Yeast bread', N'Dish made of ground corn dough or cooked corn flour, similar to Mesoamerican tortilla and Salvadoran pupusa.', 1, 6, 5.0000, 50, N'https://drive.google.com/uc?export=view&id=1GOED3J9A4WO_r28tLxED9tT8Cuvu_RDE', 100, 100, 30, CAST(N'2011-01-01' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (2, N'Anpan', N'Sweet bun', N'Sweet, braided bread popular among the Jewish diaspora.', 1, 7, 7.0000, 50, N'https://drive.google.com/uc?export=view&id=1ZVaEYmCvQ_9usvnjE_mOdhoN1xq5ggBH', 100, 90, 25, CAST(N'2022-05-27' AS Date), 0.3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (3, N'Arboud', N'Cornbread', N'Thick, sweet or spicy flatbread made of Dough, ghee, milk, sugar. Mostly consumed as snacks and also in iftar.', 1, 7, 10.0000, 100, N'https://drive.google.com/uc?export=view&id=1ci3HPKHhWyYtfiO6KyxRAw9BVmNwzDqu', 200, 100, 30, CAST(N'2022-05-28' AS Date), 0.2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (4, N'Bagel', N'Yeast bread', N'A bread of cassava, baked on a griddle.', 1, 5, 2.0000, 50, N'https://drive.google.com/uc?export=view&id=1UbDXVuuA1KIAelyMCj5ZewqWuIxqyeqa', 50, 100, 40, CAST(N'2022-05-23' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (5, N'Balep korkun', N'Flatbread', N'Dense, made with mashed bananas, often a moist, sweet, cake-like quick bread, but some recipes are traditional yeast breads.', 1, 5, 20.0000, 30, N'https://drive.google.com/uc?export=view&id=1FqGD13yplBhBYdiUpAqcrfhgEugU8QVl', 450, 90, 30, CAST(N'2022-05-29' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (6, N'Banana bread', N'Quick bread', N'Sometimes termed "speckled bread", raisins, currants and candied peel are added to dough.', 1, 5, 100.0000, 20, N'https://drive.google.com/uc?export=view&id=1EWTIRSk59JnoW2Ds6vuluNXKi1q0l_yn', 200, 89, 20, CAST(N'2022-05-30' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (7, N'Barbari bread', N'Flatbread', N'Invented by the Barbar tribes of Iran and Northern Afghanistan.', 1, 8, 10.5000, 30, N'https://drive.google.com/uc?export=view&id=1gK2EFANnC2ae7IUVFnCkbfM6Cc76uZrX', 200, 75, 20, CAST(N'2022-05-16' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (8, N'Cottage loaf', N'Biscuit', N'Sweeter than sandwich bread, but less rich than cake, contains sultanas and raisins to add texture.', 1, 5, 12.0000, 39, N'https://drive.google.com/uc?export=view&id=1wsRoL6M1Kyrpw_f3y3p3UUHrPkWiHw3G', 250, 100, 23, CAST(N'2022-05-01' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (9, N'Crisp bread', N'Pancake', N'Prepared with barley, water and salt.', 1, 5, 15.0000, 40, N'https://drive.google.com/uc?export=view&id=18IXLkuaB2qode6ltOn7iUkVNboSLDoUe', 123, 90, 23, CAST(N'2022-05-06' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (10, N'Dosa', N'Biscuit', N'Flat and circular, average thickness of 2 cm, usually eaten fresh.', 1, 5, 14.0000, 40, N'https://drive.google.com/uc?export=view&id=1DdU97QLvudwbUqkgEnTDbhNUoE5rdb3J', 200, 80, 30, CAST(N'2022-05-20' AS Date), 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (11, N'English muffin', N'Flatbread', N'Similar to a bagel, but instead of a hole it has only a dimple on top, which is filled with a bit of butter and diced onion or garlic. Known as a cebularz in Poland.', 1, 8, 16.0000, 40, N'https://drive.google.com/uc?export=view&id=1wsRoL6M1Kyrpw_f3y3p3UUHrPkWiHw3G', 150, 89, 20, CAST(N'2022-05-30' AS Date), 0.4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [Description], [Status], [CategoryID], [Price], [Quantity], [Thumbnail], [Weight], [Degree], [Time], [CreateDate], [Discount]) VALUES (13, N'Focaccia', N'Pancake', N'Doughy, white bread bun (roll) specialty; particularly associated with Waterford, Ireland. Currently made in Waterford and County Kilkenny, and was historically made in Wexford.', 1, 8, 12.0000, 20, N'https://drive.google.com/uc?export=view&id=1HefjYy7XS8nsQabOaRSSoG3gGzwZw43n', 300, 70, 20, CAST(N'2022-05-20' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Image] ON 

INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (1, 1, N'https://drive.google.com/uc?export=view&id=1yWmmxcXKKwy9YVcYwNqmxbsl6tCwHYwF', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (2, 1, N'https://drive.google.com/uc?export=view&id=1ZVaEYmCvQ_9usvnjE_mOdhoN1xq5ggBH', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (3, 1, N'https://drive.google.com/uc?export=view&id=1zHa9zDb3Ea_r3LGlPJByOB-wqjN3k0tn', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (4, 4, N'https://drive.google.com/uc?export=view&id=1UbDXVuuA1KIAelyMCj5ZewqWuIxqyeqa', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (6, 4, N'https://drive.google.com/uc?export=view&id=1OWh03DpOiuV9mEXzYJuInpQGqbJAd6mo', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (7, 4, N'https://drive.google.com/uc?export=view&id=1PdA3xg8xJ7TWLWIGtXn4yJVg1vJr8uB5', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (8, 2, N'https://drive.google.com/uc?export=view&id=1y18Ms8VIUzRoJVS2gBwLTKItj0Epu6oF', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (9, 2, N'https://drive.google.com/uc?export=view&id=1wsRoL6M1Kyrpw_f3y3p3UUHrPkWiHw3G', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (10, 2, N'https://drive.google.com/uc?export=view&id=18IXLkuaB2qode6ltOn7iUkVNboSLDoUe', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (11, 3, N'https://drive.google.com/uc?export=view&id=1Z2ieLkgCHKhNZTgv6Gh4Sh7mE6sooU32', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (13, 3, N'https://drive.google.com/uc?export=view&id=1DdU97QLvudwbUqkgEnTDbhNUoE5rdb3J', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (14, 3, N'https://drive.google.com/uc?export=view&id=1DdU97QLvudwbUqkgEnTDbhNUoE5rdb3J', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (15, 5, N'https://drive.google.com/uc?export=view&id=1yWmmxcXKKwy9YVcYwNqmxbsl6tCwHYwF', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (16, 5, N'https://drive.google.com/uc?export=view&id=1JCQUvdZhrO2l5pnu6HRFJmAZv5O_zguK', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (17, 5, N'https://drive.google.com/uc?export=view&id=1GOED3J9A4WO_r28tLxED9tT8Cuvu_RDE', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (20, 6, N'https://drive.google.com/uc?export=view&id=1JCQUvdZhrO2l5pnu6HRFJmAZv5O_zguK', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (21, 6, N'https://drive.google.com/uc?export=view&id=1GOED3J9A4WO_r28tLxED9tT8Cuvu_RDE', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (22, 6, N'https://drive.google.com/uc?export=view&id=1PdA3xg8xJ7TWLWIGtXn4yJVg1vJr8uB5', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (23, 7, N'https://drive.google.com/uc?export=view&id=1HefjYy7XS8nsQabOaRSSoG3gGzwZw43n', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (24, 7, N'https://drive.google.com/uc?export=view&id=1h56nXWKpVW6uF05vx1l1le2F_4_FtSni', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (25, 7, N'https://drive.google.com/uc?export=view&id=1edFV66Eaeium87zgtb1KymuPDmeOx13a', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (26, 8, N'https://drive.google.com/uc?export=view&id=1FqGD13yplBhBYdiUpAqcrfhgEugU8QVl', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (27, 8, N'https://drive.google.com/uc?export=view&id=1ZQM3WCWgZmFUcL1sfmVvi16frzV1uQ4q', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (28, 8, N'https://drive.google.com/uc?export=view&id=1h56nXWKpVW6uF05vx1l1le2F_4_FtSni', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (29, 9, N'https://drive.google.com/uc?export=view&id=1mSg06Pfj1SGpd95A8GOfoq6stYIEEEgo', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (30, 9, N'https://drive.google.com/uc?export=view&id=1hutN1dfLXYLrIA_6nXCIaSCSbV3JBFmR', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (31, 9, N'https://drive.google.com/uc?export=view&id=1ZVaEYmCvQ_9usvnjE_mOdhoN1xq5ggBH', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (32, 10, N'https://drive.google.com/uc?export=view&id=1D2NMNW6pZX_fGvu2utzKQcI2n2TSYo7x', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (33, 10, N'https://drive.google.com/uc?export=view&id=138Y0niljyPdNqGTnmIkpyckenOVHfgKH', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (34, 10, N'https://drive.google.com/uc?export=view&id=1J0Qk0_8YMchemxvZgoDKOUIdLDZHXoIp', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (35, 11, N'https://drive.google.com/uc?export=view&id=1OWh03DpOiuV9mEXzYJuInpQGqbJAd6mo', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (36, 11, N'https://drive.google.com/uc?export=view&id=1UbDXVuuA1KIAelyMCj5ZewqWuIxqyeqa', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (39, 13, N'https://drive.google.com/uc?export=view&id=1ci3HPKHhWyYtfiO6KyxRAw9BVmNwzDqu', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (41, 13, N'https://drive.google.com/uc?export=view&id=1ci3HPKHhWyYtfiO6KyxRAw9BVmNwzDqu', 1)
INSERT [dbo].[Product_Image] ([ProductImageID], [ProductID], [Image], [Status]) VALUES (42, 13, N'https://drive.google.com/uc?export=view&id=1gK2EFANnC2ae7IUVFnCkbfM6Cc76uZrX', 1)
SET IDENTITY_INSERT [dbo].[Product_Image] OFF
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Sale')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Marketing')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Customer')
GO
INSERT [dbo].[Slider] ([SliderId], [ProductID], [UserID], [PostID], [Title], [Backlink], [Status], [Image], [Notes]) VALUES (1, 1, 2, NULL, N'Chickery Chocolate', N'http://localhost:8080/src/product/productlist', 1, N'https://drive.google.com/uc?export=view&id=15w4-GBfo1GvQWIQwjdGRa313sfkesuqD', N'Black flower')
INSERT [dbo].[Slider] ([SliderId], [ProductID], [UserID], [PostID], [Title], [Backlink], [Status], [Image], [Notes]) VALUES (2, 2, 2, NULL, N'Black flowerZ', N'http://localhost:8080/src/BlogListController', 2, N'/src/uploads/SWP391_BakeryShop_Design Template - Google Docs - Google Chrome 16-May-22 8_22_07 AM.png', N'welcome to our bakery')
INSERT [dbo].[Slider] ([SliderId], [ProductID], [UserID], [PostID], [Title], [Backlink], [Status], [Image], [Notes]) VALUES (3, 3, 2, NULL, N'Black flower', N'http://localhost:8080/src/BlogListController', 1, N'https://drive.google.com/uc?export=view&id=15w4-GBfo1GvQWIQwjdGRa313sfkesuqD', N'awesowm')
INSERT [dbo].[Slider] ([SliderId], [ProductID], [UserID], [PostID], [Title], [Backlink], [Status], [Image], [Notes]) VALUES (4, 4, 2, NULL, N'Red flower', N'http://localhost:8080/src/blog/details?postId=9', 1, N'https://drive.google.com/uc?export=view&id=1la3oN1kGueh8o5ydH_1OOLXIkAj2sbtO', N'Wish you enjoyed')
INSERT [dbo].[Slider] ([SliderId], [ProductID], [UserID], [PostID], [Title], [Backlink], [Status], [Image], [Notes]) VALUES (5, NULL, 1004, 2, N'Hotpost', N'http://localhost:8080/src/blog/details?postId=2', 1, N'1', N'greatpost')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (1, N'namvdhe151370@gmail.com', N'123456', 3, N'nam', N'0234875334', 1, N'https://drive.google.com/uc?export=view&id=1i0ukB2NldmmqO6rEWHK-Rq0jR6kZxIGN', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (2, N'vinhnthe151215@fpt.edu.vn', N'YWJjZDEyMzQ=', 3, N'Vinh', N'4324324', 0, N'https://www.w3schools.com/howto/img_avatar.png', NULL, NULL, N'aaaa', 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (3, N'hoanglp@gmail.com', N'123456', 3, N'hoang', N'0324567823', 1, N'https://drive.google.com/uc?export=view&id=1GBGeUsOfBw_fmb-AatK20gaEIywhxibI', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (4, N'thai211@gmail.com', N'123', 4, N'huythai', N'123456789', 1, N'https://drive.google.com/uc?export=view&id=1elLFm7tNZ0f1eHPc3_ASaztZNW-izDoB', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (5, N'thaihh@fpt.edu.vn', N'123456', 3, N'thai', N'0421356789', 1, N'https://drive.google.com/uc?export=view&id=1_yxB0L7sM3-gvCyan0WhE0k3-TE8xgpP', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (1004, N'hoangdx@yahoo.com', N'123456a', 3, N'Hoang2', N'0123546987', 1, N'https://drive.google.com/uc?export=view&id=1aTeJL9xSw2I5X7m9smWEGi2nuOLulOCh', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (1005, N'hoangdx@gmail.com', N'123456a', 3, N'hoang2', N'0123456789', 1, N'https://drive.google.com/uc?export=view&id=1aDe9kHuzQYWdlrPus7cj-v_RImorc5p1', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (1009, N'1', N'123a', 1, N'a', N'1', 1, N'1', N'1', NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (2006, N'namvdhe151370@fpt.edu.vn', N'MTIzNDU=', 4, N'namgay', N'0833515589', 0, N'NULL', NULL, NULL, N'aaaa', NULL)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (2007, N'hoangdxhe151343@fpt.edu.vn', N'MTIzNDU=', 4, N'ÄINH XUÃN HOÃNG', N'0833515589', 1, N'NULL', NULL, NULL, N'10', NULL)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (2008, N'xuanzhoangfu145@gmail.com', N'MTIzNDU2YQ==', 3, N'hoang dz', N'0835515587', 1, N'NULL', NULL, NULL, N'1', 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [RoleID], [Name], [Mobile], [Gender], [Image], [token], [expiration], [address], [status]) VALUES (2009, N'hahuythai2001@gmail.com', N'MTIzYXZj', 3, N'ÄINH XUÃN HOÃNG1', N'0833515583', 1, N'NULL', NULL, NULL, N'10', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Cart_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Detail_Cart] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartId])
GO
ALTER TABLE [dbo].[Cart_Detail] CHECK CONSTRAINT [FK_Cart_Detail_Cart]
GO
ALTER TABLE [dbo].[Cart_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Detail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Cart_Detail] CHECK CONSTRAINT [FK_Cart_Detail_Product]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Customer] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Customer]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post_Category] FOREIGN KEY([PostCategoryID])
REFERENCES [dbo].[Post_Category] ([PostCategoryID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post_Category]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product_Image]  WITH CHECK ADD  CONSTRAINT [FK_Product_Image_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Product_Image] CHECK CONSTRAINT [FK_Product_Image_Product]
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD  CONSTRAINT [FK_Slider_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Slider] CHECK CONSTRAINT [FK_Slider_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Sum22_SWP391_BakeryShop] SET  READ_WRITE 
GO

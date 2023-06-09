USE [ChickenLife]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[A_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_Name] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[UserPWD] [nvarchar](max) NOT NULL,
	[A_Gender] [int] NOT NULL,
	[Birthday] [date] NOT NULL,
	[P_id] [int] NOT NULL,
	[A_level] [int] NOT NULL,
	[A_Email] [nvarchar](max) NOT NULL,
	[A_Phone] [nvarchar](max) NOT NULL,
	[A_add] [nvarchar](max) NOT NULL,
	[A_RegisteredAt] [date] NOT NULL,
	[A_NickName] [nvarchar](max) NOT NULL,
	[A_Coin] [int] NOT NULL,
	[VerifycationToken] [nvarchar](max) NULL,
	[VerifiedAt] [datetime2](7) NULL,
	[PasswordRestToken] [nvarchar](max) NULL,
	[ResetTokenExpries] [datetime2](7) NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[A_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[Ad_ID] [int] IDENTITY(1,1) NOT NULL,
	[PartnerID] [int] NOT NULL,
	[CaseID] [int] NOT NULL,
	[Ad_StartTime] [date] NOT NULL,
	[Ad_EndTime] [date] NOT NULL,
	[Ad_DayCount] [int] NOT NULL,
	[Ad_ImageURL] [nvarchar](max) NULL,
	[Ad_TargetURL] [nvarchar](max) NULL,
	[Ad_Clicks] [int] NOT NULL,
	[Ad_Description] [nvarchar](max) NULL,
	[Ad_PaymentDueDate] [date] NOT NULL,
	[Ad_TimeOfPayment] [date] NOT NULL,
	[Ad_ActiveStatus] [int] NOT NULL,
	[OS_ID] [int] NOT NULL,
	[AD_FinalPaymentAmount] [int] NOT NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[Ad_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ads_OrderStatuses]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads_OrderStatuses](
	[OS_ID] [int] IDENTITY(1,1) NOT NULL,
	[OS_Name] [nvarchar](max) NOT NULL,
	[OS_FullfillmentRate] [decimal](5, 2) NOT NULL,
	[OS_PaymentMultiplier] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_Ads_OrderStatuses] PRIMARY KEY CLUSTERED 
(
	[OS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlockSpaces]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockSpaces](
	[Mb_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_ID] [int] NOT NULL,
	[Mb_starX] [int] NOT NULL,
	[Mb_starY] [int] NOT NULL,
	[Mb_EndX] [int] NOT NULL,
	[Mb_EndY] [int] NOT NULL,
 CONSTRAINT [PK_BlockSpaces] PRIMARY KEY CLUSTERED 
(
	[Mb_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardOrders]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardOrders](
	[CO_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_ID] [int] NOT NULL,
	[CA_ID] [int] NOT NULL,
	[CT_ID] [int] NOT NULL,
	[CO_Sum] [int] NOT NULL,
	[CO_Date] [datetime2](7) NOT NULL,
	[CO_Cancel] [bit] NOT NULL,
	[CO_Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CardOrders] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[CA_ID] [int] IDENTITY(1,1) NOT NULL,
	[CA_Name] [nvarchar](max) NOT NULL,
	[CA_Price] [int] NOT NULL,
	[CA_Image] [nvarchar](max) NOT NULL,
	[CA_Describe] [nvarchar](max) NOT NULL,
	[CA_Date] [datetime2](7) NOT NULL,
	[CA_Discontinuted] [bit] NOT NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[CA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardTypes]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardTypes](
	[CT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CT_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CardTypes] PRIMARY KEY CLUSTERED 
(
	[CT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseTables]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseTables](
	[Case_ID] [int] IDENTITY(1,1) NOT NULL,
	[Case_Name] [nvarchar](max) NOT NULL,
	[Case_Desc] [nvarchar](max) NULL,
	[Case_PricePerDay] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_CaseTables] PRIMARY KEY CLUSTERED 
(
	[Case_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DebugLogs]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebugLogs](
	[D_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_ID] [int] NOT NULL,
	[D_time] [datetime2](7) NOT NULL,
	[D_event] [nvarchar](max) NOT NULL,
	[D_isSolved] [bit] NOT NULL,
	[D_Comment] [nvarchar](100) NULL,
 CONSTRAINT [PK_DebugLogs] PRIMARY KEY CLUSTERED 
(
	[D_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Name] [nvarchar](max) NOT NULL,
	[E_Gender] [int] NOT NULL,
	[E_UserName] [nvarchar](max) NOT NULL,
	[E_Pwd] [nvarchar](100) NOT NULL,
	[E_Email] [nvarchar](max) NOT NULL,
	[E_Title] [int] NOT NULL,
	[E_Phone] [nvarchar](10) NOT NULL,
	[E_Birthday] [date] NOT NULL,
	[E_HireDate] [date] NOT NULL,
	[E_Address] [nvarchar](max) NOT NULL,
	[E_Permission] [int] NOT NULL,
	[E_Work] [bit] NOT NULL,
	[Locked] [bit] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginStaus]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginStaus](
	[L_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_ID] [int] NOT NULL,
	[L_cTime] [datetime2](7) NOT NULL,
	[L_dcTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LoginStaus] PRIMARY KEY CLUSTERED 
(
	[L_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Map_ADAreas]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Map_ADAreas](
	[Area_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_ID] [int] NOT NULL,
	[CaseID] [int] NOT NULL,
	[Area_StartX] [int] NOT NULL,
	[Area_EndX] [int] NOT NULL,
	[Area_StartY] [int] NOT NULL,
	[Area_EndY] [int] NOT NULL,
 CONSTRAINT [PK_Map_ADAreas] PRIMARY KEY CLUSTERED 
(
	[Area_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maps]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maps](
	[M_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_Desc] [nvarchar](max) NOT NULL,
	[M_MapType] [int] NOT NULL,
	[M_Src] [nvarchar](max) NOT NULL,
	[M_minX] [int] NOT NULL,
	[M_minY] [int] NOT NULL,
	[M_maxX] [int] NOT NULL,
	[M_maxY] [int] NOT NULL,
 CONSTRAINT [PK_Maps] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Od_ID] [int] IDENTITY(1,1) NOT NULL,
	[O_ID] [int] NOT NULL,
	[P_ID] [int] NOT NULL,
	[Od_UnitPrice] [decimal](18, 4) NOT NULL,
	[Od_Sum] [decimal](18, 4) NOT NULL,
	[Od_Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Od_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[O_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_ID] [int] NOT NULL,
	[O_Date] [datetime2](7) NOT NULL,
	[O_TotalPrice] [decimal](18, 4) NOT NULL,
	[O_Cancle] [bit] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[O_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_Name] [nvarchar](max) NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[P_Note] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_Name] [nvarchar](max) NOT NULL,
	[P_ProductType] [int] NOT NULL,
	[P_Price] [int] NOT NULL,
	[P_Image] [nvarchar](max) NOT NULL,
	[P_Describe] [nvarchar](max) NOT NULL,
	[P_Instock] [int] NOT NULL,
	[P_Date] [datetime2](7) NOT NULL,
	[P_Discount] [int] NOT NULL,
	[P_Discontinuted] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[R_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_ID] [int] NOT NULL,
	[ReportedA_ID] [int] NOT NULL,
	[R_Time] [datetime2](7) NOT NULL,
	[R_ReportType] [int] NOT NULL,
	[R_Reason] [nvarchar](max) NOT NULL,
	[R_ReportStatus] [int] NOT NULL,
	[R_Reply] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[R_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Societies]    Script Date: 2023/5/29 下午 03:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Societies](
	[S_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_ID] [int] NOT NULL,
	[TargetA_ID] [int] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[S_Notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Societies] PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230529011111_m1', N'6.0.16')
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (1, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (2, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (3, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (4, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (5, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (6, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (7, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (8, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (9, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
INSERT [dbo].[Accounts] ([A_ID], [A_Name], [UserName], [UserPWD], [A_Gender], [Birthday], [P_id], [A_level], [A_Email], [A_Phone], [A_add], [A_RegisteredAt], [A_NickName], [A_Coin], [VerifycationToken], [VerifiedAt], [PasswordRestToken], [ResetTokenExpries], [PasswordHash], [PasswordSalt]) VALUES (10, N'Test', N'Test', N'Test', 0, CAST(N'2023-05-29' AS Date), 1, 99, N'Test@gmail.com', N'0900000000', N'Test', CAST(N'2023-05-29' AS Date), N'Test', 999999, NULL, NULL, NULL, NULL, 0x0000000000000000000000000000000000000000000000000000000000000000, 0x0000000000000000000000000000000000000000000000000000000000000000)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Ads] ON 

INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (1, 2, 4, CAST(N'2022-12-14' AS Date), CAST(N'2023-01-04' AS Date), 21, N'AD_1.jpg', N'http://exmple/.com1', 171, N'', CAST(N'2022-12-12' AS Date), CAST(N'2022-12-12' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (2, 18, 3, CAST(N'2022-04-03' AS Date), CAST(N'2022-04-17' AS Date), 14, N'AD_2.jpg', N'http://exmple/.com2', 78, N'', CAST(N'2022-04-01' AS Date), CAST(N'2022-04-01' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (3, 4, 3, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-21' AS Date), 12, N'AD_3.jpg', N'http://exmple/.com3', 182, N'', CAST(N'2022-03-07' AS Date), CAST(N'2022-03-07' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (4, 5, 1, CAST(N'2022-04-18' AS Date), CAST(N'2022-04-30' AS Date), 12, N'AD_4.jpg', N'http://exmple/.com4', 46, N'', CAST(N'2022-04-16' AS Date), CAST(N'2022-04-16' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (5, 4, 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-13' AS Date), 7, N'AD_5.jpg', N'http://exmple/.com5', 44, N'', CAST(N'2022-05-04' AS Date), CAST(N'2022-05-04' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (6, 20, 1, CAST(N'2022-08-20' AS Date), CAST(N'2022-08-31' AS Date), 11, N'AD_6.jpg', N'http://exmple/.com6', 76, N'', CAST(N'2022-08-18' AS Date), CAST(N'2022-08-18' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (7, 11, 1, CAST(N'2022-05-30' AS Date), CAST(N'2022-06-15' AS Date), 16, N'AD_7.jpg', N'http://exmple/.com7', 133, N'', CAST(N'2022-05-28' AS Date), CAST(N'2022-05-28' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (8, 3, 2, CAST(N'2022-03-16' AS Date), CAST(N'2022-03-25' AS Date), 9, N'AD_8.jpg', N'http://exmple/.com8', 133, N'', CAST(N'2022-03-14' AS Date), CAST(N'2022-03-14' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (9, 14, 3, CAST(N'2022-11-27' AS Date), CAST(N'2022-12-05' AS Date), 8, N'AD_9.jpg', N'http://exmple/.com9', 186, N'', CAST(N'2022-11-25' AS Date), CAST(N'2022-11-25' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (10, 17, 1, CAST(N'2022-10-25' AS Date), CAST(N'2022-11-09' AS Date), 15, N'AD_10.jpg', N'http://exmple/.com10', 195, N'', CAST(N'2022-10-23' AS Date), CAST(N'2022-10-23' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (11, 16, 2, CAST(N'2022-07-21' AS Date), CAST(N'2022-08-14' AS Date), 24, N'AD_11.jpg', N'http://exmple/.com11', 222, N'', CAST(N'2022-07-19' AS Date), CAST(N'2022-07-19' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (12, 4, 1, CAST(N'2022-10-10' AS Date), CAST(N'2022-11-01' AS Date), 22, N'AD_12.jpg', N'http://exmple/.com12', 137, N'', CAST(N'2022-10-08' AS Date), CAST(N'2022-10-08' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (13, 1, 1, CAST(N'2022-07-15' AS Date), CAST(N'2022-07-31' AS Date), 16, N'AD_13.jpg', N'http://exmple/.com13', 189, N'', CAST(N'2022-07-13' AS Date), CAST(N'2022-07-13' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (14, 7, 1, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-25' AS Date), 15, N'AD_14.jpg', N'http://exmple/.com14', 102, N'', CAST(N'2022-02-08' AS Date), CAST(N'2022-02-08' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (15, 12, 2, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-24' AS Date), 16, N'AD_15.jpg', N'http://exmple/.com15', 75, N'', CAST(N'2022-03-06' AS Date), CAST(N'2022-03-06' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (16, 14, 4, CAST(N'2022-12-09' AS Date), CAST(N'2022-12-20' AS Date), 11, N'AD_16.jpg', N'http://exmple/.com16', 210, N'', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-07' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (17, 12, 1, CAST(N'2022-10-06' AS Date), CAST(N'2022-10-14' AS Date), 8, N'AD_17.jpg', N'http://exmple/.com17', 218, N'', CAST(N'2022-10-04' AS Date), CAST(N'2022-10-04' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (18, 14, 4, CAST(N'2022-02-06' AS Date), CAST(N'2022-02-18' AS Date), 12, N'AD_18.jpg', N'http://exmple/.com18', 135, N'', CAST(N'2022-02-04' AS Date), CAST(N'2022-02-04' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (19, 7, 2, CAST(N'2022-10-08' AS Date), CAST(N'2022-10-15' AS Date), 7, N'AD_19.jpg', N'http://exmple/.com19', 129, N'', CAST(N'2022-10-06' AS Date), CAST(N'2022-10-06' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (20, 11, 1, CAST(N'2022-10-24' AS Date), CAST(N'2022-11-13' AS Date), 20, N'AD_20.jpg', N'http://exmple/.com20', 132, N'', CAST(N'2022-10-22' AS Date), CAST(N'2022-10-22' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (21, 2, 2, CAST(N'2022-10-27' AS Date), CAST(N'2022-11-14' AS Date), 18, N'AD_21.jpg', N'http://exmple/.com21', 45, N'', CAST(N'2022-10-25' AS Date), CAST(N'2022-10-25' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (22, 7, 4, CAST(N'2022-11-18' AS Date), CAST(N'2022-12-03' AS Date), 15, N'AD_22.jpg', N'http://exmple/.com22', 79, N'', CAST(N'2022-11-16' AS Date), CAST(N'2022-11-16' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (23, 14, 3, CAST(N'2022-08-22' AS Date), CAST(N'2022-09-03' AS Date), 12, N'AD_23.jpg', N'http://exmple/.com23', 202, N'', CAST(N'2022-08-20' AS Date), CAST(N'2022-08-20' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (24, 4, 1, CAST(N'2022-04-21' AS Date), CAST(N'2022-05-03' AS Date), 12, N'AD_24.jpg', N'http://exmple/.com24', 50, N'', CAST(N'2022-04-19' AS Date), CAST(N'2022-04-19' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (25, 19, 4, CAST(N'2022-09-30' AS Date), CAST(N'2022-10-21' AS Date), 21, N'AD_25.jpg', N'http://exmple/.com25', 234, N'', CAST(N'2022-09-28' AS Date), CAST(N'2022-09-28' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (26, 10, 3, CAST(N'2022-12-20' AS Date), CAST(N'2023-01-05' AS Date), 16, N'AD_26.jpg', N'http://exmple/.com26', 201, N'', CAST(N'2022-12-18' AS Date), CAST(N'2022-12-18' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (27, 11, 3, CAST(N'2022-03-21' AS Date), CAST(N'2022-04-02' AS Date), 12, N'AD_27.jpg', N'http://exmple/.com27', 222, N'', CAST(N'2022-03-19' AS Date), CAST(N'2022-03-19' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (28, 18, 3, CAST(N'2022-12-15' AS Date), CAST(N'2022-12-25' AS Date), 10, N'AD_28.jpg', N'http://exmple/.com28', 148, N'', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 1, 1, 15000)
INSERT [dbo].[Ads] ([Ad_ID], [PartnerID], [CaseID], [Ad_StartTime], [Ad_EndTime], [Ad_DayCount], [Ad_ImageURL], [Ad_TargetURL], [Ad_Clicks], [Ad_Description], [Ad_PaymentDueDate], [Ad_TimeOfPayment], [Ad_ActiveStatus], [OS_ID], [AD_FinalPaymentAmount]) VALUES (29, 8, 4, CAST(N'2022-04-15' AS Date), CAST(N'2022-04-29' AS Date), 14, N'AD_29.jpg', N'http://exmple/.com29', 66, N'', CAST(N'2022-04-13' AS Date), CAST(N'2022-04-13' AS Date), 1, 1, 15000)
SET IDENTITY_INSERT [dbo].[Ads] OFF
GO
SET IDENTITY_INSERT [dbo].[Ads_OrderStatuses] ON 

INSERT [dbo].[Ads_OrderStatuses] ([OS_ID], [OS_Name], [OS_FullfillmentRate], [OS_PaymentMultiplier]) VALUES (1, N'完全履約', CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Ads_OrderStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[CardOrders] ON 

INSERT [dbo].[CardOrders] ([CO_ID], [A_ID], [CA_ID], [CT_ID], [CO_Sum], [CO_Date], [CO_Cancel], [CO_Quantity]) VALUES (1, 1, 1, 1, 100, CAST(N'2023-05-29T09:11:10.7407984' AS DateTime2), 0, 1)
INSERT [dbo].[CardOrders] ([CO_ID], [A_ID], [CA_ID], [CT_ID], [CO_Sum], [CO_Date], [CO_Cancel], [CO_Quantity]) VALUES (2, 1, 2, 2, 400, CAST(N'2023-05-29T09:11:10.7407985' AS DateTime2), 0, 2)
SET IDENTITY_INSERT [dbo].[CardOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Cards] ON 

INSERT [dbo].[Cards] ([CA_ID], [CA_Name], [CA_Price], [CA_Image], [CA_Describe], [CA_Date], [CA_Discontinuted]) VALUES (1, N'100元換150點', 100, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684856122/%E9%BB%9E%E6%95%B8_lihgyo.png', N'100元換150點', CAST(N'2023-05-29T09:11:10.7407994' AS DateTime2), 0)
INSERT [dbo].[Cards] ([CA_ID], [CA_Name], [CA_Price], [CA_Image], [CA_Describe], [CA_Date], [CA_Discontinuted]) VALUES (2, N'200元換350點', 200, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684856122/%E9%BB%9E%E6%95%B8_lihgyo.png', N'200元換350點', CAST(N'2023-05-29T09:11:10.7407995' AS DateTime2), 0)
INSERT [dbo].[Cards] ([CA_ID], [CA_Name], [CA_Price], [CA_Image], [CA_Describe], [CA_Date], [CA_Discontinuted]) VALUES (3, N'400元換650點', 400, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684856122/%E9%BB%9E%E6%95%B8_lihgyo.png', N'400元換650點', CAST(N'2023-05-29T09:11:10.7407996' AS DateTime2), 0)
INSERT [dbo].[Cards] ([CA_ID], [CA_Name], [CA_Price], [CA_Image], [CA_Describe], [CA_Date], [CA_Discontinuted]) VALUES (4, N'500元換800點', 500, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684856122/%E9%BB%9E%E6%95%B8_lihgyo.png', N'500元換800點', CAST(N'2023-05-29T09:11:10.7407997' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Cards] OFF
GO
SET IDENTITY_INSERT [dbo].[CardTypes] ON 

INSERT [dbo].[CardTypes] ([CT_ID], [CT_Name]) VALUES (1, N'綠界')
INSERT [dbo].[CardTypes] ([CT_ID], [CT_Name]) VALUES (2, N'LinePay')
SET IDENTITY_INSERT [dbo].[CardTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[CaseTables] ON 

INSERT [dbo].[CaseTables] ([Case_ID], [Case_Name], [Case_Desc], [Case_PricePerDay]) VALUES (1, N'豪華蛋黃熱區', NULL, CAST(250.0000 AS Decimal(18, 4)))
INSERT [dbo].[CaseTables] ([Case_ID], [Case_Name], [Case_Desc], [Case_PricePerDay]) VALUES (2, N'中等曝光區', NULL, CAST(200.0000 AS Decimal(18, 4)))
INSERT [dbo].[CaseTables] ([Case_ID], [Case_Name], [Case_Desc], [Case_PricePerDay]) VALUES (3, N'經濟實惠區', NULL, CAST(150.0000 AS Decimal(18, 4)))
INSERT [dbo].[CaseTables] ([Case_ID], [Case_Name], [Case_Desc], [Case_PricePerDay]) VALUES (4, N'限時特惠專區', NULL, CAST(100.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[CaseTables] OFF
GO
SET IDENTITY_INSERT [dbo].[DebugLogs] ON 

INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (1, 5, CAST(N'2023-05-29T09:11:10.7397127' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (2, 2, CAST(N'2023-05-29T09:11:10.7397190' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (3, 2, CAST(N'2023-05-29T09:11:10.7397192' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (4, 2, CAST(N'2023-05-29T09:11:10.7397193' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (5, 8, CAST(N'2023-05-29T09:11:10.7397194' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (6, 2, CAST(N'2023-05-29T09:11:10.7397196' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (7, 10, CAST(N'2023-05-29T09:11:10.7397198' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (8, 6, CAST(N'2023-05-29T09:11:10.7397199' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (9, 8, CAST(N'2023-05-29T09:11:10.7397200' AS DateTime2), N'test', 1, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (10, 4, CAST(N'2023-05-29T09:11:10.7397202' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (11, 4, CAST(N'2023-05-29T09:11:10.7397204' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (12, 5, CAST(N'2023-05-29T09:11:10.7397205' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (13, 9, CAST(N'2023-05-29T09:11:10.7397206' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (14, 3, CAST(N'2023-05-29T09:11:10.7397207' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (15, 9, CAST(N'2023-05-29T09:11:10.7397209' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (16, 5, CAST(N'2023-05-29T09:11:10.7397210' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (17, 2, CAST(N'2023-05-29T09:11:10.7397211' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (18, 10, CAST(N'2023-05-29T09:11:10.7397213' AS DateTime2), N'test', 0, NULL)
INSERT [dbo].[DebugLogs] ([D_ID], [A_ID], [D_time], [D_event], [D_isSolved], [D_Comment]) VALUES (19, 1, CAST(N'2023-05-29T09:11:10.7397214' AS DateTime2), N'test', 0, NULL)
SET IDENTITY_INSERT [dbo].[DebugLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (1, N'bobo', 0, N'bobo', N'1234', N'user@gmail.com', 0, N'0963915584', CAST(N'1999-08-08' AS Date), CAST(N'2023-05-15' AS Date), N'高雄市前金區', 0, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (2, N'wang', 0, N'wang', N'8A2BgV4tGvWyy1jLEeFqOxvqxOIaGaYzlHkcrvKzGts=', N'church6711@gmail.com', 1, N'0914157686', CAST(N'2002-10-02' AS Date), CAST(N'2022-01-10' AS Date), N'高雄市前金區', 1, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (3, N'andy', 0, N'andy', N'3ufrqm', N'wang@gmail.com', 1, N'0917590203', CAST(N'2002-02-20' AS Date), CAST(N'2022-01-15' AS Date), N'高雄市前金區', 2, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (4, N'marvin', 1, N'marvin', N'6b8ci8m55', N'aefg0559@gmail.com', 0, N'0911149087', CAST(N'2002-07-28' AS Date), CAST(N'2022-01-15' AS Date), N'高雄市前金區', 2, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (5, N'cindy', 1, N'cindy', N'ez2p11', N'weat1122@gmail.com', 0, N'0916301102', CAST(N'2002-02-05' AS Date), CAST(N'2022-01-12' AS Date), N'高雄市前金區', 1, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (6, N'magy', 0, N'magy', N'ykmq2u', N'wyj860@gmail.com', 1, N'0919853845', CAST(N'2002-07-04' AS Date), CAST(N'2022-01-24' AS Date), N'高雄市前金區', 1, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (7, N'bonish', 0, N'bonish', N'8vlyng', N'608556004@gmail.com', 0, N'0916174609', CAST(N'2002-05-14' AS Date), CAST(N'2022-01-09' AS Date), N'高雄市前金區', 1, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (8, N'emma', 1, N'emma', N'hoihhxh', N'b0405011@gmail.com', 0, N'0913936067', CAST(N'2002-08-19' AS Date), CAST(N'2022-01-23' AS Date), N'高雄市前金區', 2, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (9, N'renee', 1, N'renee', N'sgdsqy', N'roywu@gmail.com', 0, N'0911406452', CAST(N'2002-07-07' AS Date), CAST(N'2022-01-17' AS Date), N'高雄市前金區', 1, 1, 0, N'user')
INSERT [dbo].[Employees] ([E_ID], [E_Name], [E_Gender], [E_UserName], [E_Pwd], [E_Email], [E_Title], [E_Phone], [E_Birthday], [E_HireDate], [E_Address], [E_Permission], [E_Work], [Locked], [Role]) VALUES (12, N'apple', 1, N'apple', N'IjXNEtn6nJmmsQbxIvjBkmqPyIF/2IFz5ub1nuRqyY8=', N'yujie@gmail.com', 0, N'0970006391', CAST(N'2001-06-19' AS Date), CAST(N'2023-05-24' AS Date), N'高雄市路竹區', 1, 1, 0, N'user')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginStaus] ON 

INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (1, 4, CAST(N'2023-02-28T04:06:20.7160000' AS DateTime2), CAST(N'2023-02-28T07:06:20.7160000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (2, 7, CAST(N'2023-03-18T18:11:06.5180000' AS DateTime2), CAST(N'2023-03-19T00:11:06.5180000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (3, 4, CAST(N'2023-05-09T07:28:27.5620000' AS DateTime2), CAST(N'2023-05-09T17:28:27.5620000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (4, 3, CAST(N'2023-05-14T21:02:20.0010000' AS DateTime2), CAST(N'2023-05-14T23:02:20.0010000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (5, 8, CAST(N'2023-03-15T00:21:52.3450000' AS DateTime2), CAST(N'2023-03-15T03:21:52.3450000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (6, 1, CAST(N'2023-05-08T17:38:10.9320000' AS DateTime2), CAST(N'2023-05-08T22:38:10.9320000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (7, 4, CAST(N'2023-03-20T12:37:42.4390000' AS DateTime2), CAST(N'2023-03-20T17:37:42.4390000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (8, 6, CAST(N'2023-03-09T05:46:55.9980000' AS DateTime2), CAST(N'2023-03-09T10:46:55.9980000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (9, 5, CAST(N'2023-03-14T09:58:35.1950000' AS DateTime2), CAST(N'2023-03-14T14:58:35.1950000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (10, 8, CAST(N'2023-04-10T06:57:01.8890000' AS DateTime2), CAST(N'2023-04-10T15:57:01.8890000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (11, 5, CAST(N'2023-03-23T18:36:59.4490000' AS DateTime2), CAST(N'2023-03-24T00:36:59.4490000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (12, 8, CAST(N'2023-05-04T07:45:02.7580000' AS DateTime2), CAST(N'2023-05-04T13:45:02.7580000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (13, 7, CAST(N'2023-05-14T01:20:08.2070000' AS DateTime2), CAST(N'2023-05-14T09:20:08.2070000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (14, 5, CAST(N'2023-04-13T06:20:57.0650000' AS DateTime2), CAST(N'2023-04-13T09:20:57.0650000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (15, 2, CAST(N'2023-03-27T10:56:29.0930000' AS DateTime2), CAST(N'2023-03-27T17:56:29.0930000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (16, 8, CAST(N'2023-03-26T06:30:07.4800000' AS DateTime2), CAST(N'2023-03-26T07:30:07.4800000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (17, 4, CAST(N'2023-03-01T14:33:49.1900000' AS DateTime2), CAST(N'2023-03-02T00:33:49.1900000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (18, 1, CAST(N'2023-04-16T04:14:13.7880000' AS DateTime2), CAST(N'2023-04-16T10:14:13.7880000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (19, 8, CAST(N'2023-04-26T22:57:07.5350000' AS DateTime2), CAST(N'2023-04-27T03:57:07.5350000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (20, 6, CAST(N'2023-05-03T06:46:28.9280000' AS DateTime2), CAST(N'2023-05-03T08:46:28.9280000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (21, 9, CAST(N'2023-02-22T01:14:36.5840000' AS DateTime2), CAST(N'2023-02-22T06:14:36.5840000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (22, 8, CAST(N'2023-02-03T14:29:25.6000000' AS DateTime2), CAST(N'2023-02-03T17:29:25.6000000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (23, 3, CAST(N'2023-04-15T21:03:43.4010000' AS DateTime2), CAST(N'2023-04-16T03:03:43.4010000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (24, 6, CAST(N'2023-05-30T01:14:37.1210000' AS DateTime2), CAST(N'2023-05-30T11:14:37.1210000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (25, 5, CAST(N'2023-04-10T05:21:57.6360000' AS DateTime2), CAST(N'2023-04-10T12:21:57.6360000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (26, 7, CAST(N'2023-03-11T15:41:58.1830000' AS DateTime2), CAST(N'2023-03-11T17:41:58.1830000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (27, 7, CAST(N'2023-03-02T00:38:00.0850000' AS DateTime2), CAST(N'2023-03-02T02:38:00.0850000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (28, 8, CAST(N'2023-02-27T11:29:55.4430000' AS DateTime2), CAST(N'2023-02-27T13:29:55.4430000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (29, 1, CAST(N'2023-05-05T12:15:35.0890000' AS DateTime2), CAST(N'2023-05-05T21:15:35.0890000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (30, 5, CAST(N'2023-02-04T23:52:30.4920000' AS DateTime2), CAST(N'2023-02-05T02:52:30.4920000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (31, 1, CAST(N'2023-04-30T07:08:35.7760000' AS DateTime2), CAST(N'2023-04-30T12:08:35.7760000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (32, 3, CAST(N'2023-05-27T09:12:50.7840000' AS DateTime2), CAST(N'2023-05-27T17:12:50.7840000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (33, 9, CAST(N'2023-02-03T10:56:33.1290000' AS DateTime2), CAST(N'2023-02-03T16:56:33.1290000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (34, 5, CAST(N'2023-04-05T10:59:00.6950000' AS DateTime2), CAST(N'2023-04-05T12:59:00.6950000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (35, 4, CAST(N'2023-04-25T13:43:10.1640000' AS DateTime2), CAST(N'2023-04-25T16:43:10.1640000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (36, 5, CAST(N'2023-05-31T06:11:38.7120000' AS DateTime2), CAST(N'2023-05-31T10:11:38.7120000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (37, 7, CAST(N'2023-04-24T10:11:15.0150000' AS DateTime2), CAST(N'2023-04-24T16:11:15.0150000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (38, 6, CAST(N'2023-02-24T20:42:42.7230000' AS DateTime2), CAST(N'2023-02-25T02:42:42.7230000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (39, 1, CAST(N'2023-03-13T21:16:32.3160000' AS DateTime2), CAST(N'2023-03-13T23:16:32.3160000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (40, 5, CAST(N'2023-05-13T12:44:28.6410000' AS DateTime2), CAST(N'2023-05-13T22:44:28.6410000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (41, 8, CAST(N'2023-05-14T13:32:00.6720000' AS DateTime2), CAST(N'2023-05-14T15:32:00.6720000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (42, 7, CAST(N'2023-02-02T06:33:36.0490000' AS DateTime2), CAST(N'2023-02-02T07:33:36.0490000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (43, 4, CAST(N'2023-03-08T05:06:05.1330000' AS DateTime2), CAST(N'2023-03-08T15:06:05.1330000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (44, 4, CAST(N'2023-05-15T08:12:10.7200000' AS DateTime2), CAST(N'2023-05-15T16:12:10.7200000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (45, 9, CAST(N'2023-03-28T09:13:23.3450000' AS DateTime2), CAST(N'2023-03-28T19:13:23.3450000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (46, 7, CAST(N'2023-03-07T18:27:00.3770000' AS DateTime2), CAST(N'2023-03-07T21:27:00.3770000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (47, 6, CAST(N'2023-02-20T08:25:07.0510000' AS DateTime2), CAST(N'2023-02-20T09:25:07.0510000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (48, 9, CAST(N'2023-02-27T21:32:11.8120000' AS DateTime2), CAST(N'2023-02-28T00:32:11.8120000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (49, 1, CAST(N'2023-04-01T19:53:11.1580000' AS DateTime2), CAST(N'2023-04-01T20:53:11.1580000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (50, 9, CAST(N'2023-03-11T11:59:32.8830000' AS DateTime2), CAST(N'2023-03-11T14:59:32.8830000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (51, 6, CAST(N'2023-05-01T17:19:39.3060000' AS DateTime2), CAST(N'2023-05-02T02:19:39.3060000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (52, 2, CAST(N'2023-02-22T00:58:32.7210000' AS DateTime2), CAST(N'2023-02-22T01:58:32.7210000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (53, 3, CAST(N'2023-05-07T11:12:19.0400000' AS DateTime2), CAST(N'2023-05-07T14:12:19.0400000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (54, 7, CAST(N'2023-03-02T10:00:35.9080000' AS DateTime2), CAST(N'2023-03-02T12:00:35.9080000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (55, 2, CAST(N'2023-03-08T08:31:15.3090000' AS DateTime2), CAST(N'2023-03-08T18:31:15.3090000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (56, 6, CAST(N'2023-04-11T18:44:50.4540000' AS DateTime2), CAST(N'2023-04-11T19:44:50.4540000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (57, 5, CAST(N'2023-04-18T16:42:02.4090000' AS DateTime2), CAST(N'2023-04-18T20:42:02.4090000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (58, 4, CAST(N'2023-04-04T04:06:16.4250000' AS DateTime2), CAST(N'2023-04-04T11:06:16.4250000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (59, 7, CAST(N'2023-05-13T22:11:00.3930000' AS DateTime2), CAST(N'2023-05-14T04:11:00.3930000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (60, 8, CAST(N'2023-05-16T05:58:23.5470000' AS DateTime2), CAST(N'2023-05-16T06:58:23.5470000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (61, 5, CAST(N'2023-04-23T05:56:58.8860000' AS DateTime2), CAST(N'2023-04-23T12:56:58.8860000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (62, 6, CAST(N'2023-02-18T01:21:17.1500000' AS DateTime2), CAST(N'2023-02-18T09:21:17.1500000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (63, 5, CAST(N'2023-02-12T13:17:58.4720000' AS DateTime2), CAST(N'2023-02-12T19:17:58.4720000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (64, 8, CAST(N'2023-04-18T17:38:15.1840000' AS DateTime2), CAST(N'2023-04-19T02:38:15.1840000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (65, 6, CAST(N'2023-04-29T10:03:42.3610000' AS DateTime2), CAST(N'2023-04-29T17:03:42.3610000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (66, 9, CAST(N'2023-05-20T05:03:20.6870000' AS DateTime2), CAST(N'2023-05-20T13:03:20.6870000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (67, 1, CAST(N'2023-05-10T18:44:27.4140000' AS DateTime2), CAST(N'2023-05-11T03:44:27.4140000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (68, 3, CAST(N'2023-02-13T08:52:28.4530000' AS DateTime2), CAST(N'2023-02-13T09:52:28.4530000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (69, 5, CAST(N'2023-02-02T17:12:42.3480000' AS DateTime2), CAST(N'2023-02-03T00:12:42.3480000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (70, 5, CAST(N'2023-04-17T05:02:44.5380000' AS DateTime2), CAST(N'2023-04-17T14:02:44.5380000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (71, 3, CAST(N'2023-02-25T12:00:02.8610000' AS DateTime2), CAST(N'2023-02-25T18:00:02.8610000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (72, 9, CAST(N'2023-04-30T03:45:49.3250000' AS DateTime2), CAST(N'2023-04-30T10:45:49.3250000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (73, 5, CAST(N'2023-05-25T14:26:12.8250000' AS DateTime2), CAST(N'2023-05-25T18:26:12.8250000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (74, 9, CAST(N'2023-05-01T17:49:21.5870000' AS DateTime2), CAST(N'2023-05-01T19:49:21.5870000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (75, 2, CAST(N'2023-03-07T00:51:54.1870000' AS DateTime2), CAST(N'2023-03-07T10:51:54.1870000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (76, 8, CAST(N'2023-05-28T17:54:06.0570000' AS DateTime2), CAST(N'2023-05-28T23:54:06.0570000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (77, 6, CAST(N'2023-05-22T15:40:32.6530000' AS DateTime2), CAST(N'2023-05-22T20:40:32.6530000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (78, 2, CAST(N'2023-03-24T15:33:50.7280000' AS DateTime2), CAST(N'2023-03-24T22:33:50.7280000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (79, 2, CAST(N'2023-04-03T20:25:15.2500000' AS DateTime2), CAST(N'2023-04-04T03:25:15.2500000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (80, 5, CAST(N'2023-04-29T21:39:57.7840000' AS DateTime2), CAST(N'2023-04-30T07:39:57.7840000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (81, 7, CAST(N'2023-04-18T16:22:16.4700000' AS DateTime2), CAST(N'2023-04-19T00:22:16.4700000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (82, 6, CAST(N'2023-02-07T00:00:44.4270000' AS DateTime2), CAST(N'2023-02-07T03:00:44.4270000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (83, 2, CAST(N'2023-02-15T10:23:30.8690000' AS DateTime2), CAST(N'2023-02-15T11:23:30.8690000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (84, 3, CAST(N'2023-04-24T19:50:04.8500000' AS DateTime2), CAST(N'2023-04-25T02:50:04.8500000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (85, 1, CAST(N'2023-05-09T19:23:43.5140000' AS DateTime2), CAST(N'2023-05-09T21:23:43.5140000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (86, 3, CAST(N'2023-03-17T04:29:04.7290000' AS DateTime2), CAST(N'2023-03-17T07:29:04.7290000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (87, 9, CAST(N'2023-05-04T01:48:13.2480000' AS DateTime2), CAST(N'2023-05-04T03:48:13.2480000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (88, 3, CAST(N'2023-03-06T04:11:41.0860000' AS DateTime2), CAST(N'2023-03-06T13:11:41.0860000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (89, 5, CAST(N'2023-04-26T18:55:21.3510000' AS DateTime2), CAST(N'2023-04-27T01:55:21.3510000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (90, 4, CAST(N'2023-03-03T17:04:31.8360000' AS DateTime2), CAST(N'2023-03-03T21:04:31.8360000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (91, 5, CAST(N'2023-02-28T01:34:26.5950000' AS DateTime2), CAST(N'2023-02-28T08:34:26.5950000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (92, 8, CAST(N'2023-02-08T20:06:10.2570000' AS DateTime2), CAST(N'2023-02-09T03:06:10.2570000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (93, 7, CAST(N'2023-04-02T18:43:21.5320000' AS DateTime2), CAST(N'2023-04-03T01:43:21.5320000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (94, 5, CAST(N'2023-03-11T15:20:49.3520000' AS DateTime2), CAST(N'2023-03-11T18:20:49.3520000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (95, 4, CAST(N'2023-05-03T09:11:22.7090000' AS DateTime2), CAST(N'2023-05-03T12:11:22.7090000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (96, 4, CAST(N'2023-04-07T22:27:17.8740000' AS DateTime2), CAST(N'2023-04-08T05:27:17.8740000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (97, 6, CAST(N'2023-05-10T14:31:48.7830000' AS DateTime2), CAST(N'2023-05-10T17:31:48.7830000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (98, 4, CAST(N'2023-03-29T11:29:33.8770000' AS DateTime2), CAST(N'2023-03-29T21:29:33.8770000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (99, 2, CAST(N'2023-05-16T16:03:20.1520000' AS DateTime2), CAST(N'2023-05-16T18:03:20.1520000' AS DateTime2))
GO
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (100, 1, CAST(N'2023-02-23T01:46:54.1620000' AS DateTime2), CAST(N'2023-02-23T09:46:54.1620000' AS DateTime2))
INSERT [dbo].[LoginStaus] ([L_ID], [A_ID], [L_cTime], [L_dcTime]) VALUES (101, 4, CAST(N'2023-02-10T06:37:37.0710000' AS DateTime2), CAST(N'2023-02-10T07:37:37.0710000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LoginStaus] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (1, 1, 1, CAST(750.0000 AS Decimal(18, 4)), CAST(750.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (2, 2, 10, CAST(600.0000 AS Decimal(18, 4)), CAST(600.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (3, 3, 9, CAST(500.0000 AS Decimal(18, 4)), CAST(500.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (4, 4, 7, CAST(500.0000 AS Decimal(18, 4)), CAST(500.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (5, 5, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (6, 6, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (7, 7, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (8, 8, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (9, 9, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (10, 10, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (11, 11, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (12, 12, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
INSERT [dbo].[OrderDetails] ([Od_ID], [O_ID], [P_ID], [Od_UnitPrice], [Od_Sum], [Od_Quantity]) VALUES (13, 13, 1, CAST(699.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (1, 1, CAST(N'2023-05-29T09:11:10.7408032' AS DateTime2), CAST(750.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (2, 1, CAST(N'2023-05-29T09:11:10.7408033' AS DateTime2), CAST(600.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (3, 2, CAST(N'2023-05-29T09:11:10.7408034' AS DateTime2), CAST(500.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (4, 3, CAST(N'2023-05-29T09:11:10.7408035' AS DateTime2), CAST(500.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (5, 8, CAST(N'2023-05-29T09:11:10.7408752' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (6, 6, CAST(N'2023-05-29T09:11:10.7408772' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (7, 8, CAST(N'2023-05-29T09:11:10.7408781' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (8, 5, CAST(N'2023-05-29T09:11:10.7408789' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (9, 8, CAST(N'2023-05-29T09:11:10.7408798' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (10, 4, CAST(N'2023-05-29T09:11:10.7408814' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (11, 8, CAST(N'2023-05-29T09:11:10.7408823' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (12, 6, CAST(N'2023-05-29T09:11:10.7408831' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[Orders] ([O_ID], [A_ID], [O_Date], [O_TotalPrice], [O_Cancle]) VALUES (13, 3, CAST(N'2023-05-29T09:11:10.7408839' AS DateTime2), CAST(700.0000 AS Decimal(18, 4)), 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (1, N'Apple', N'林小明', N'apple@gmail.com', N'0912345678', N'好合作')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (2, N'Google', N'陳大名', N'google@gmail.com', N'0923456789', N'溝通良好')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (3, N'Amazon', N'王小美', N'amazon@gmail.com', N'0934567890', N'產品品質不錯')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (4, N'Microsoft', N'李志明', N'microsoft@gmail.com', N'0912345678', N'合作愉快')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (5, N'Facebook', N'蔡佳玲', N'facebook@gmail.com', N'0923456789', N'回覆速度快')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (6, N'Netflix', N'林小華', N'netflix@gmail.com', N'0934567890', N'服務很好')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (7, N'Tesla', N'陳小明', N'tesla@gmail.com', N'0912345678', N'值得信賴')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (8, N'Twitter', N'蔡小玲', N'twitter@gmail.com', N'0923456789', N'溝通良好')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (9, N'Uber', N'李小明', N'uber@gmail.com', N'0934567890', N'好合作')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (10, N'Airbnb', N'林小美', N'airbnb@gmail.com', N'0912345678', N'服務很好')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (11, N'LinkedIn', N'陳大名', N'linkedin@gmail.com', N'0923456789', N'回覆速度快')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (12, N'Dropbox', N'王小華', N'dropbox@gmail.com', N'0934567890', N'值得信賴')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (13, N'Twitter', N'蔡小玲', N'twitter@gmail.com', N'0923456789', N'溝通良好')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (14, N'Salesforce', N'陳小明', N'salesforce@gmail.com', N'0912345678', N'產品品質不錯')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (15, N'Adobe', N'蔡佳玲', N'adobe@gmail.com', N'0923456789', N'回覆速度快')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (16, N'PayPal', N'林小華', N'paypal@gmail.com', N'0934567890', N'合作愉快')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (17, N'Oracle', N'陳小明', N'oracle@gmail.com', N'0912345678', N'回覆速度快')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (18, N'IBM', N'蔡小玲', N'ibm@gmail.com', N'0923456789', N'好合作')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (19, N'Intel', N'李小明', N'intel@gmail.com', N'0934567890', N'值得信賴')
INSERT [dbo].[Partners] ([P_ID], [P_Name], [Contact], [Email], [Phone], [P_Note]) VALUES (20, N'HP', N'林小美', N'hp@gmail.com', N'0912345678', N'溝通良好')
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (1, N'博麗 靈夢', 0, 750, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684835451/woq8pk012slwtluy8p3k.png', N'博麗神社的巫女。生來就具有強大的靈力，也是博麗神社以來靈力最強大的巫女。最喜歡坐在神社的緣側前悠閒地喝茶，罕有地天生幸運，使她解決了不少異變。', 99, CAST(N'2023-05-29T09:11:10.7408011' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (2, N'霧雨 魔理沙', 0, 750, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684835474/hmtyowptu1agbamv1vfh.png', N'居住於魔法森林的人類魔法使，常騎著掃把，喜歡蒐集東西，努力追趕不用修行也很強的靈夢。', 99, CAST(N'2023-05-29T09:11:10.7408013' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (3, N'東風谷 早苗', 0, 750, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684835488/smyheqfg2ctqbuvleeks.png', N'守矢神社的風祝。', 99, CAST(N'2023-05-29T09:11:10.7408014' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (4, N'帕秋莉·諾雷姬', 0, 750, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684853351/006_00_mzeucd.png', N'已有100歲，一直都生活在紅魔館的圖書館。有哮喘的毛病。', 99, CAST(N'2023-05-29T09:11:10.7408015' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (5, N'十六夜 咲夜', 0, 750, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684853395/005_00_bzakdg.png', N'紅魔館的女僕長，擅長打掃。能夠無視時間的不可逆性停止時間。', 99, CAST(N'2023-05-29T09:11:10.7408016' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (6, N'小精靈', 3, 350, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684853683/113_00_jqkj0f.png', N'小精靈。', 99, CAST(N'2023-05-29T09:11:10.7408017' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (7, N'腳', 3, 500, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684853683/114_00_ajrq7u.png', N'想被踩踩看嗎?。', 99, CAST(N'2023-05-29T09:11:10.7408017' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (8, N'鬼魂', 3, 500, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684853683/122_00_xy08rk.png', N'鬼魂，可參加萬聖節。', 99, CAST(N'2023-05-29T09:11:10.7408018' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (9, N'香菇', 3, 500, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684853683/126_00_boxrvt.png', N'為了生存而長出腳的香菇。', 99, CAST(N'2023-05-29T09:11:10.7408019' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (10, N'烏龜', 2, 600, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684855469/082_00_qbrhui.png', N'能快速移動的烏龜。', 99, CAST(N'2023-05-29T09:11:10.7408020' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (11, N'章魚', 2, 600, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684855469/125_00_av01za.png', N'就是那位能預測冠軍的章魚哥。', 99, CAST(N'2023-05-29T09:11:10.7408021' AS DateTime2), 0, 0)
INSERT [dbo].[Products] ([P_ID], [P_Name], [P_ProductType], [P_Price], [P_Image], [P_Describe], [P_Instock], [P_Date], [P_Discount], [P_Discontinuted]) VALUES (12, N'烏鴉', 2, 600, N'https://res.cloudinary.com/dolqf5dmn/image/upload/v1684855469/119_00_blsy4d.png', N'黑色的烏鴉。', 99, CAST(N'2023-05-29T09:11:10.7408022' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Products_P_id] FOREIGN KEY([P_id])
REFERENCES [dbo].[Products] ([P_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Products_P_id]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_Ads_OrderStatuses_OS_ID] FOREIGN KEY([OS_ID])
REFERENCES [dbo].[Ads_OrderStatuses] ([OS_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_Ads_OrderStatuses_OS_ID]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_CaseTables_CaseID] FOREIGN KEY([CaseID])
REFERENCES [dbo].[CaseTables] ([Case_ID])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_CaseTables_CaseID]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_Partners_PartnerID] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partners] ([P_ID])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_Partners_PartnerID]
GO
ALTER TABLE [dbo].[BlockSpaces]  WITH CHECK ADD  CONSTRAINT [FK_BlockSpaces_Maps_M_ID] FOREIGN KEY([M_ID])
REFERENCES [dbo].[Maps] ([M_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlockSpaces] CHECK CONSTRAINT [FK_BlockSpaces_Maps_M_ID]
GO
ALTER TABLE [dbo].[CardOrders]  WITH CHECK ADD  CONSTRAINT [FK_CardOrders_Accounts_A_ID] FOREIGN KEY([A_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardOrders] CHECK CONSTRAINT [FK_CardOrders_Accounts_A_ID]
GO
ALTER TABLE [dbo].[CardOrders]  WITH CHECK ADD  CONSTRAINT [FK_CardOrders_Cards_CA_ID] FOREIGN KEY([CA_ID])
REFERENCES [dbo].[Cards] ([CA_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardOrders] CHECK CONSTRAINT [FK_CardOrders_Cards_CA_ID]
GO
ALTER TABLE [dbo].[CardOrders]  WITH CHECK ADD  CONSTRAINT [FK_CardOrders_CardTypes_CT_ID] FOREIGN KEY([CT_ID])
REFERENCES [dbo].[CardTypes] ([CT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardOrders] CHECK CONSTRAINT [FK_CardOrders_CardTypes_CT_ID]
GO
ALTER TABLE [dbo].[DebugLogs]  WITH CHECK ADD  CONSTRAINT [FK_DebugLogs_Accounts_A_ID] FOREIGN KEY([A_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
GO
ALTER TABLE [dbo].[DebugLogs] CHECK CONSTRAINT [FK_DebugLogs_Accounts_A_ID]
GO
ALTER TABLE [dbo].[LoginStaus]  WITH CHECK ADD  CONSTRAINT [FK_LoginStaus_Accounts_A_ID] FOREIGN KEY([A_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
GO
ALTER TABLE [dbo].[LoginStaus] CHECK CONSTRAINT [FK_LoginStaus_Accounts_A_ID]
GO
ALTER TABLE [dbo].[Map_ADAreas]  WITH CHECK ADD  CONSTRAINT [FK_Map_ADAreas_CaseTables_CaseID] FOREIGN KEY([CaseID])
REFERENCES [dbo].[CaseTables] ([Case_ID])
GO
ALTER TABLE [dbo].[Map_ADAreas] CHECK CONSTRAINT [FK_Map_ADAreas_CaseTables_CaseID]
GO
ALTER TABLE [dbo].[Map_ADAreas]  WITH CHECK ADD  CONSTRAINT [FK_Map_ADAreas_Maps_M_ID] FOREIGN KEY([M_ID])
REFERENCES [dbo].[Maps] ([M_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Map_ADAreas] CHECK CONSTRAINT [FK_Map_ADAreas_Maps_M_ID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_O_ID] FOREIGN KEY([O_ID])
REFERENCES [dbo].[Orders] ([O_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_O_ID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_P_ID] FOREIGN KEY([P_ID])
REFERENCES [dbo].[Products] ([P_ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_P_ID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts_A_ID] FOREIGN KEY([A_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts_A_ID]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Accounts_A_ID] FOREIGN KEY([A_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Accounts_A_ID]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Accounts_ReportedA_ID] FOREIGN KEY([ReportedA_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Accounts_ReportedA_ID]
GO
ALTER TABLE [dbo].[Societies]  WITH CHECK ADD  CONSTRAINT [FK_Societies_Accounts_A_ID] FOREIGN KEY([A_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Societies] CHECK CONSTRAINT [FK_Societies_Accounts_A_ID]
GO
ALTER TABLE [dbo].[Societies]  WITH CHECK ADD  CONSTRAINT [FK_Societies_Accounts_TargetA_ID] FOREIGN KEY([TargetA_ID])
REFERENCES [dbo].[Accounts] ([A_ID])
GO
ALTER TABLE [dbo].[Societies] CHECK CONSTRAINT [FK_Societies_Accounts_TargetA_ID]
GO

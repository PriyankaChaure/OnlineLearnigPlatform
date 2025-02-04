USE [EduDB24]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 07-06-2024 17:50:00 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartTbl](
	[CartID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[CourseID] [bigint] NOT NULL,
	[Qty] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_CartTbl] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTbl](
	[CourseID] [bigint] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[SubjectID] [bigint] NOT NULL,
	[CourseDescription] [nvarchar](max) NULL,
	[DurationInHours] [int] NOT NULL,
	[Prerequisite] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageFilePath] [nvarchar](max) NULL,
	[TrainingCompanyID] [bigint] NOT NULL,
 CONSTRAINT [PK_CourseTbl] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderComplaintSolutionTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderComplaintSolutionTbl](
	[OrderComplaintSolutionID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderComplaintID] [bigint] NOT NULL,
	[SolutionDate] [datetime2](7) NOT NULL,
	[SolutionTitle] [nvarchar](max) NULL,
	[SolutionDesc] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderComplaintSolutionTbl] PRIMARY KEY CLUSTERED 
(
	[OrderComplaintSolutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderComplaintTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderComplaintTbl](
	[OrderComplaintID] [bigint] IDENTITY(1,1) NOT NULL,
	[ComplaintDate] [datetime2](7) NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[ComplaintTitle] [nvarchar](max) NULL,
	[ComplaintDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderComplaintTbl] PRIMARY KEY CLUSTERED 
(
	[OrderComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetTbl](
	[OrderDetID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[CourseID] [bigint] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetTbl] PRIMARY KEY CLUSTERED 
(
	[OrderDetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderPaymentTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPaymentTbl](
	[OrderPaymentID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PaymentMode] [int] NOT NULL,
 CONSTRAINT [PK_OrderPaymentTbl] PRIMARY KEY CLUSTERED 
(
	[OrderPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTbl](
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[IsPaid] [bit] NOT NULL,
 CONSTRAINT [PK_OrderTbl] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubjecTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjecTbl](
	[SubjectID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](max) NOT NULL,
	[SubjectStreamID] [bigint] NOT NULL,
 CONSTRAINT [PK_SubjecTbl] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubjectStreamTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectStreamTbl](
	[SubjectStreamID] [bigint] IDENTITY(1,1) NOT NULL,
	[StreamName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SubjectStreamTbl] PRIMARY KEY CLUSTERED 
(
	[SubjectStreamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingCompanyTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCompanyTbl](
	[TrainingCompanyID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[EmailID] [nvarchar](max) NULL,
	[MobileNo] [nvarchar](max) NULL,
	[WebsiteUrl] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[TrainingCompanyID1] [bigint] NULL,
 CONSTRAINT [PK_TrainingCompanyTbl] PRIMARY KEY CLUSTERED 
(
	[TrainingCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTbl]    Script Date: 07-06-2024 17:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[EmailID] [nvarchar](max) NULL,
	[MobileNo] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTbl] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240506065552_first', N'7.0.18')
SET IDENTITY_INSERT [dbo].[CartTbl] ON 

INSERT [dbo].[CartTbl] ([CartID], [UserID], [CourseID], [Qty], [Price]) VALUES (7, 1, 2, 1, CAST(8900.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[CartTbl] OFF
SET IDENTITY_INSERT [dbo].[CourseTbl] ON 

INSERT [dbo].[CourseTbl] ([CourseID], [CourseName], [SubjectID], [CourseDescription], [DurationInHours], [Prerequisite], [Price], [ImageFilePath], [TrainingCompanyID]) VALUES (2, N'C# Programming', 1, N'Basic Programming with Object Oriented Concepts. Advance Features like extensions methods, events, delegtes, generics etc.', 32, N'Basic programming with basic computer. ', CAST(8900.00 AS Decimal(18, 2)), N'\courseimages\C.png', 1)
INSERT [dbo].[CourseTbl] ([CourseID], [CourseName], [SubjectID], [CourseDescription], [DurationInHours], [Prerequisite], [Price], [ImageFilePath], [TrainingCompanyID]) VALUES (4, N'F# Programming', 1, N'Functional Programming, Lambda Programming with implementation of concrete mathematics.', 28, N'Basic Knowledge of Programming', CAST(12000.00 AS Decimal(18, 2)), N'\courseimages\Fsharp.jpg', 1)
INSERT [dbo].[CourseTbl] ([CourseID], [CourseName], [SubjectID], [CourseDescription], [DurationInHours], [Prerequisite], [Price], [ImageFilePath], [TrainingCompanyID]) VALUES (5, N'PCB Designing', 7, N'BAsic Electronics, PCB Fundamentals, Tools and Standards. Actual Demo PCB Design Practical ', 730, N'Basic Knowledge Electornics', CAST(150000.00 AS Decimal(18, 2)), N'\courseimages\pcb.jpg', 1)
INSERT [dbo].[CourseTbl] ([CourseID], [CourseName], [SubjectID], [CourseDescription], [DurationInHours], [Prerequisite], [Price], [ImageFilePath], [TrainingCompanyID]) VALUES (6, N'Fluid Mechanics', 4, N'Related to Fluid Flow and types of fluids, techniques and desinging. Basics of Autocad ', 100, N'Any Science Graduate. ', CAST(10000.00 AS Decimal(18, 2)), N'\courseimages\fluid.png', 1)
INSERT [dbo].[CourseTbl] ([CourseID], [CourseName], [SubjectID], [CourseDescription], [DurationInHours], [Prerequisite], [Price], [ImageFilePath], [TrainingCompanyID]) VALUES (7, N'EV Designing', 7, N'Basics of EV, Basic of Motor, Basics batteris with types batteries, architecture.  ', 670, N'12th science graudates', CAST(250000.00 AS Decimal(18, 2)), N'\courseimages\Ev.jpg', 1)
INSERT [dbo].[CourseTbl] ([CourseID], [CourseName], [SubjectID], [CourseDescription], [DurationInHours], [Prerequisite], [Price], [ImageFilePath], [TrainingCompanyID]) VALUES (11, N'ASP.NET core', 1, N'Basics of Middleware, Program classs, Startup class, DI and Repository, Service Life Time, Condition Codition, Logining etc.', 28, N'C# Programming, Webbasics', CAST(20000.00 AS Decimal(18, 2)), N'\courseimages\aspnetcore.png', 1)
SET IDENTITY_INSERT [dbo].[CourseTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderComplaintSolutionTbl] ON 

INSERT [dbo].[OrderComplaintSolutionTbl] ([OrderComplaintSolutionID], [OrderComplaintID], [SolutionDate], [SolutionTitle], [SolutionDesc]) VALUES (1, 2, CAST(N'2024-05-04 19:37:11.4303183' AS DateTime2), N'Ok We are working on this', N'We are working on this , please check after 5 Days.')
INSERT [dbo].[OrderComplaintSolutionTbl] ([OrderComplaintSolutionID], [OrderComplaintID], [SolutionDate], [SolutionTitle], [SolutionDesc]) VALUES (2, 3, CAST(N'2024-05-07 17:07:21.2880808' AS DateTime2), NULL, NULL)
INSERT [dbo].[OrderComplaintSolutionTbl] ([OrderComplaintSolutionID], [OrderComplaintID], [SolutionDate], [SolutionTitle], [SolutionDesc]) VALUES (3, 4, CAST(N'2024-05-12 16:59:51.6905400' AS DateTime2), N'trr   rty', N'rttytuty')
INSERT [dbo].[OrderComplaintSolutionTbl] ([OrderComplaintSolutionID], [OrderComplaintID], [SolutionDate], [SolutionTitle], [SolutionDesc]) VALUES (4, 5, CAST(N'2024-05-15 16:01:05.3066454' AS DateTime2), N'rtu', N'uyiui')
SET IDENTITY_INSERT [dbo].[OrderComplaintSolutionTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderComplaintTbl] ON 

INSERT [dbo].[OrderComplaintTbl] ([OrderComplaintID], [ComplaintDate], [OrderID], [ComplaintTitle], [ComplaintDescription]) VALUES (2, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 2, N'not able to view ', N'videos are getting buffered. ')
INSERT [dbo].[OrderComplaintTbl] ([OrderComplaintID], [ComplaintDate], [OrderID], [ComplaintTitle], [ComplaintDescription]) VALUES (3, CAST(N'2024-05-04 19:22:46.6197678' AS DateTime2), 3, N'bad quality', N'video quality if poor')
INSERT [dbo].[OrderComplaintTbl] ([OrderComplaintID], [ComplaintDate], [OrderID], [ComplaintTitle], [ComplaintDescription]) VALUES (4, CAST(N'2024-05-12 16:51:52.1977673' AS DateTime2), 10, N'cgfghf ', N'rtyt6utyi')
INSERT [dbo].[OrderComplaintTbl] ([OrderComplaintID], [ComplaintDate], [OrderID], [ComplaintTitle], [ComplaintDescription]) VALUES (5, CAST(N'2024-05-12 17:08:37.0126602' AS DateTime2), 8, N'aaaaaaaaaaaaaa', N'bbbbbbbbbbbbbbb')
INSERT [dbo].[OrderComplaintTbl] ([OrderComplaintID], [ComplaintDate], [OrderID], [ComplaintTitle], [ComplaintDescription]) VALUES (6, CAST(N'2024-05-20 16:54:57.3650620' AS DateTime2), 6, N'ghgjhk', N'jhjkkl')
SET IDENTITY_INSERT [dbo].[OrderComplaintTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderDetTbl] ON 

INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (1, 2, 7, CAST(250000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (2, 2, 4, CAST(12000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (3, 3, 4, CAST(12000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (4, 3, 2, CAST(8900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (5, 4, 7, CAST(250000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (6, 4, 11, CAST(20000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (7, 5, 2, CAST(8900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (8, 6, 2, CAST(8900.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (9, 6, 5, CAST(150000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (10, 6, 7, CAST(250000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (11, 7, 11, CAST(20000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (12, 8, 2, CAST(8900.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (13, 8, 4, CAST(12000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (14, 9, 5, CAST(150000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (15, 10, 5, CAST(150000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (16, 11, 2, CAST(8900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (17, 12, 2, CAST(8900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (18, 13, 2, CAST(8900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (19, 13, 7, CAST(250000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (20, 14, 2, CAST(8900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetTbl] ([OrderDetID], [OrderID], [CourseID], [Price], [Qty]) VALUES (21, 15, 4, CAST(12000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[OrderDetTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderPaymentTbl] ON 

INSERT [dbo].[OrderPaymentTbl] ([OrderPaymentID], [OrderID], [PaymentDate], [Amount], [PaymentMode]) VALUES (1, 4, CAST(N'2024-05-03 17:33:55.4525361' AS DateTime2), CAST(270000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderPaymentTbl] ([OrderPaymentID], [OrderID], [PaymentDate], [Amount], [PaymentMode]) VALUES (2, 7, CAST(N'2024-05-07 17:04:52.4510326' AS DateTime2), CAST(20000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderPaymentTbl] ([OrderPaymentID], [OrderID], [PaymentDate], [Amount], [PaymentMode]) VALUES (3, 8, CAST(N'2024-05-09 19:38:52.6285082' AS DateTime2), CAST(29800.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderPaymentTbl] ([OrderPaymentID], [OrderID], [PaymentDate], [Amount], [PaymentMode]) VALUES (4, 10, CAST(N'2024-05-10 14:25:43.6167678' AS DateTime2), CAST(150000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderPaymentTbl] ([OrderPaymentID], [OrderID], [PaymentDate], [Amount], [PaymentMode]) VALUES (5, 9, CAST(N'2024-05-10 14:25:57.8395915' AS DateTime2), CAST(150000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderPaymentTbl] ([OrderPaymentID], [OrderID], [PaymentDate], [Amount], [PaymentMode]) VALUES (6, 14, CAST(N'2024-05-18 12:56:18.5336939' AS DateTime2), CAST(8900.00 AS Decimal(18, 2)), 2)
SET IDENTITY_INSERT [dbo].[OrderPaymentTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderTbl] ON 

INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (2, CAST(N'2024-04-25 15:49:29.4846383' AS DateTime2), 1, 0)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (3, CAST(N'2024-04-30 16:35:42.5084557' AS DateTime2), 1, 0)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (4, CAST(N'2024-05-03 17:33:55.4476264' AS DateTime2), 2, 1)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (5, CAST(N'2024-05-06 13:21:57.2428798' AS DateTime2), 3, 0)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (6, CAST(N'2024-05-07 16:55:31.1278735' AS DateTime2), 3, 0)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (7, CAST(N'2024-05-07 17:04:48.5702556' AS DateTime2), 3, 1)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (8, CAST(N'2024-05-09 19:38:35.6725594' AS DateTime2), 3, 1)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (9, CAST(N'2024-05-10 14:25:41.2449544' AS DateTime2), 3, 1)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (10, CAST(N'2024-05-10 14:25:27.3738466' AS DateTime2), 3, 1)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (11, CAST(N'2024-05-10 17:56:16.8836114' AS DateTime2), 3, 0)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (12, CAST(N'2024-05-12 19:36:30.4585162' AS DateTime2), 3, 0)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (13, CAST(N'2024-05-13 13:16:19.6505568' AS DateTime2), 3, 0)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (14, CAST(N'2024-05-18 12:56:18.5324410' AS DateTime2), 3, 1)
INSERT [dbo].[OrderTbl] ([OrderID], [OrderDate], [UserID], [IsPaid]) VALUES (15, CAST(N'2024-06-02 17:46:42.6290707' AS DateTime2), 3, 0)
SET IDENTITY_INSERT [dbo].[OrderTbl] OFF
SET IDENTITY_INSERT [dbo].[SubjecTbl] ON 

INSERT [dbo].[SubjecTbl] ([SubjectID], [SubjectName], [SubjectStreamID]) VALUES (1, N'Programming', 1)
INSERT [dbo].[SubjecTbl] ([SubjectID], [SubjectName], [SubjectStreamID]) VALUES (2, N'Databases', 1)
INSERT [dbo].[SubjecTbl] ([SubjectID], [SubjectName], [SubjectStreamID]) VALUES (3, N'Quantum Physics', 2)
INSERT [dbo].[SubjecTbl] ([SubjectID], [SubjectName], [SubjectStreamID]) VALUES (4, N'Mechanics', 2)
INSERT [dbo].[SubjecTbl] ([SubjectID], [SubjectName], [SubjectStreamID]) VALUES (5, N'Organic', 3)
INSERT [dbo].[SubjecTbl] ([SubjectID], [SubjectName], [SubjectStreamID]) VALUES (7, N'Industrial Electornics', 6)
INSERT [dbo].[SubjecTbl] ([SubjectID], [SubjectName], [SubjectStreamID]) VALUES (8, N'English', 7)
SET IDENTITY_INSERT [dbo].[SubjecTbl] OFF
SET IDENTITY_INSERT [dbo].[SubjectStreamTbl] ON 

INSERT [dbo].[SubjectStreamTbl] ([SubjectStreamID], [StreamName]) VALUES (1, N'Information Technology')
INSERT [dbo].[SubjectStreamTbl] ([SubjectStreamID], [StreamName]) VALUES (2, N'Physics')
INSERT [dbo].[SubjectStreamTbl] ([SubjectStreamID], [StreamName]) VALUES (3, N'Chemistry')
INSERT [dbo].[SubjectStreamTbl] ([SubjectStreamID], [StreamName]) VALUES (6, N'Electronics')
INSERT [dbo].[SubjectStreamTbl] ([SubjectStreamID], [StreamName]) VALUES (7, N'Languages')
SET IDENTITY_INSERT [dbo].[SubjectStreamTbl] OFF
SET IDENTITY_INSERT [dbo].[TrainingCompanyTbl] ON 

INSERT [dbo].[TrainingCompanyTbl] ([TrainingCompanyID], [CompanyName], [Address], [EmailID], [MobileNo], [WebsiteUrl], [Password], [TrainingCompanyID1]) VALUES (1, N'RI-TECH', N'Akurdi Pune', N'contact@ritechpune.com', N'978686787686', N'https://www.ritechpune.com', N'abcd', NULL)
SET IDENTITY_INSERT [dbo].[TrainingCompanyTbl] OFF
SET IDENTITY_INSERT [dbo].[UserTbl] ON 

INSERT [dbo].[UserTbl] ([UserID], [FirstName], [LastName], [Address], [EmailID], [MobileNo], [Password]) VALUES (1, N'Amol', N'Patil', N'main road, near shitala devi mandir, akurdi pune.', N'amol@hotmail.com', NULL, N'abcd')
INSERT [dbo].[UserTbl] ([UserID], [FirstName], [LastName], [Address], [EmailID], [MobileNo], [Password]) VALUES (2, N'Sudhir', N'Shitole', N'main road, akurdi pune', N'sudhir@hotmail.com', N'1234567890', N'1234')
INSERT [dbo].[UserTbl] ([UserID], [FirstName], [LastName], [Address], [EmailID], [MobileNo], [Password]) VALUES (3, N'prachi', N'Salve', N'Pune', N'prachi@123', NULL, N'123')
SET IDENTITY_INSERT [dbo].[UserTbl] OFF
ALTER TABLE [dbo].[CartTbl]  WITH CHECK ADD  CONSTRAINT [FK_CartTbl_CourseTbl_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseTbl] ([CourseID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartTbl] CHECK CONSTRAINT [FK_CartTbl_CourseTbl_CourseID]
GO
ALTER TABLE [dbo].[CartTbl]  WITH CHECK ADD  CONSTRAINT [FK_CartTbl_UserTbl_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTbl] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartTbl] CHECK CONSTRAINT [FK_CartTbl_UserTbl_UserID]
GO
ALTER TABLE [dbo].[CourseTbl]  WITH CHECK ADD  CONSTRAINT [FK_CourseTbl_SubjecTbl_SubjectID] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[SubjecTbl] ([SubjectID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseTbl] CHECK CONSTRAINT [FK_CourseTbl_SubjecTbl_SubjectID]
GO
ALTER TABLE [dbo].[CourseTbl]  WITH CHECK ADD  CONSTRAINT [FK_CourseTbl_TrainingCompanyTbl_TrainingCompanyID] FOREIGN KEY([TrainingCompanyID])
REFERENCES [dbo].[TrainingCompanyTbl] ([TrainingCompanyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseTbl] CHECK CONSTRAINT [FK_CourseTbl_TrainingCompanyTbl_TrainingCompanyID]
GO
ALTER TABLE [dbo].[OrderComplaintSolutionTbl]  WITH CHECK ADD  CONSTRAINT [FK_OrderComplaintSolutionTbl_OrderComplaintTbl_OrderComplaintID] FOREIGN KEY([OrderComplaintID])
REFERENCES [dbo].[OrderComplaintTbl] ([OrderComplaintID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderComplaintSolutionTbl] CHECK CONSTRAINT [FK_OrderComplaintSolutionTbl_OrderComplaintTbl_OrderComplaintID]
GO
ALTER TABLE [dbo].[OrderComplaintTbl]  WITH CHECK ADD  CONSTRAINT [FK_OrderComplaintTbl_OrderTbl_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[OrderTbl] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderComplaintTbl] CHECK CONSTRAINT [FK_OrderComplaintTbl_OrderTbl_OrderID]
GO
ALTER TABLE [dbo].[OrderDetTbl]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetTbl_CourseTbl_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseTbl] ([CourseID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetTbl] CHECK CONSTRAINT [FK_OrderDetTbl_CourseTbl_CourseID]
GO
ALTER TABLE [dbo].[OrderDetTbl]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetTbl_OrderTbl_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[OrderTbl] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetTbl] CHECK CONSTRAINT [FK_OrderDetTbl_OrderTbl_OrderID]
GO
ALTER TABLE [dbo].[OrderPaymentTbl]  WITH CHECK ADD  CONSTRAINT [FK_OrderPaymentTbl_OrderTbl_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[OrderTbl] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderPaymentTbl] CHECK CONSTRAINT [FK_OrderPaymentTbl_OrderTbl_OrderID]
GO
ALTER TABLE [dbo].[OrderTbl]  WITH CHECK ADD  CONSTRAINT [FK_OrderTbl_UserTbl_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTbl] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderTbl] CHECK CONSTRAINT [FK_OrderTbl_UserTbl_UserID]
GO
ALTER TABLE [dbo].[SubjecTbl]  WITH CHECK ADD  CONSTRAINT [FK_SubjecTbl_SubjectStreamTbl_SubjectStreamID] FOREIGN KEY([SubjectStreamID])
REFERENCES [dbo].[SubjectStreamTbl] ([SubjectStreamID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjecTbl] CHECK CONSTRAINT [FK_SubjecTbl_SubjectStreamTbl_SubjectStreamID]
GO
ALTER TABLE [dbo].[TrainingCompanyTbl]  WITH CHECK ADD  CONSTRAINT [FK_TrainingCompanyTbl_TrainingCompanyTbl_TrainingCompanyID1] FOREIGN KEY([TrainingCompanyID1])
REFERENCES [dbo].[TrainingCompanyTbl] ([TrainingCompanyID])
GO
ALTER TABLE [dbo].[TrainingCompanyTbl] CHECK CONSTRAINT [FK_TrainingCompanyTbl_TrainingCompanyTbl_TrainingCompanyID1]
GO

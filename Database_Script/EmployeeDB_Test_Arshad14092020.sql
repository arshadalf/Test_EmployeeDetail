USE [master]
GO
/****** Object:  Database [EmployeeDB_Test_Arshad14092020]    Script Date: 14/09/2020 2:29:42 pm ******/
CREATE DATABASE [EmployeeDB_Test_Arshad14092020]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeDB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeDB_Test_Arshad14092020].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeDB_Test_Arshad14092020]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 14/09/2020 2:29:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Salary] [decimal](18, 0) NULL,
	[Age] [int] NULL,
	[Department] [nvarchar](50) NULL,
 CONSTRAINT [PK__Employee__3214EC27C54BAC73] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (1, N'Mark', N'Smith', N'Male', CAST(60000 AS Decimal(18, 0)), 35, N'IT')
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (2, N'Samita', N'Hustle', N'Female', CAST(30000 AS Decimal(18, 0)), 45, N'HR')
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (3, N'Lady', N'jolie', N'Female', CAST(70000 AS Decimal(18, 0)), 29, N'HR')
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (4, N'Ali', N'Hastings', N'Male', CAST(30000 AS Decimal(18, 0)), 33, N'Adminstrator')
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (5, N'ZukerBerg', N'Hastings', N'Male', CAST(10000 AS Decimal(18, 0)), 36, N'IT')
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (6, N'Curtly', N'Walsh', N'Male', CAST(6000 AS Decimal(18, 0)), 42, N'Marketing')
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (7, N'Mike', N'Getang', N'Male', CAST(60000 AS Decimal(18, 0)), 49, N'Finance')
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary], [Age], [Department]) VALUES (8, N'Grame', N'Hook', N'Male', CAST(23000 AS Decimal(18, 0)), 41, N'Finance')
SET IDENTITY_INSERT [dbo].[Employees] OFF
USE [master]
GO
ALTER DATABASE [EmployeeDB_Test_Arshad14092020] SET  READ_WRITE 
GO

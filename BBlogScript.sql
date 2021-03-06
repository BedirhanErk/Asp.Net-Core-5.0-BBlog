USE [master]
GO
/****** Object:  Database [BBlogDb]    Script Date: 4/7/2022 11:25:58 PM ******/
CREATE DATABASE [BBlogDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BBlogDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BBlogDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BBlogDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BBlogDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BBlogDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BBlogDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BBlogDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BBlogDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BBlogDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BBlogDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BBlogDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BBlogDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BBlogDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BBlogDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BBlogDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BBlogDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BBlogDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BBlogDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BBlogDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BBlogDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BBlogDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BBlogDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BBlogDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BBlogDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BBlogDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BBlogDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BBlogDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BBlogDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BBlogDb] SET RECOVERY FULL 
GO
ALTER DATABASE [BBlogDb] SET  MULTI_USER 
GO
ALTER DATABASE [BBlogDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BBlogDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BBlogDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BBlogDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BBlogDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BBlogDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BBlogDb', N'ON'
GO
ALTER DATABASE [BBlogDb] SET QUERY_STORE = OFF
GO
USE [BBlogDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/7/2022 11:25:58 PM ******/
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
/****** Object:  Table [dbo].[Abouts]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[Detail1] [nvarchar](max) NULL,
	[Detail2] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[MapLocation] [nvarchar](max) NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogRatings]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogRatings](
	[BlogRatingId] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NOT NULL,
	[TotalPoint] [decimal](18, 2) NOT NULL,
	[CommentNumber] [int] NOT NULL,
 CONSTRAINT [PK_BlogRatings] PRIMARY KEY CLUSTERED 
(
	[BlogRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[BlogContent] [nvarchar](max) NULL,
	[ThumbnailImage] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CreDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[WriterId] [int] NULL,
	[BlogRatingId] [int] NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CreDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[BlogId] [int] NOT NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[CreDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message2s]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message2s](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[SenderId] [int] NULL,
	[ReceiverId] [int] NULL,
	[Subject] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Message2s] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [nvarchar](max) NULL,
	[Receiver] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetters]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetters](
	[EmailId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_NewsLetters] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[Symbol] [nvarchar](max) NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Writers]    Script Date: 4/7/2022 11:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Writers](
	[WriterId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[About] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[CityId] [int] NULL,
	[Facebook] [nvarchar](max) NULL,
	[LinkedIn] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
 CONSTRAINT [PK_Writers] PRIMARY KEY CLUSTERED 
(
	[WriterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211127140300_InitialMigration', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211127145735_AddRelation', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211127150202_AddRelation2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211127150357_ChangeSomeCell', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211202205514_AddedCity', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211202205719_AddedCity', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211203184511_AddRelation3', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211203194139_RemoveCity', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211203195455_AddCities', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211203201058_SomeChanges', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211204112407_RemoveCityv2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211204112532_WriterChanges', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211204121448_AddRelation4', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211208181537_NewsLetterAdded', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211209193216_AboutAndContactChange', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211209195445_AboutAndContactChange2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220116121129_AddedPoint', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220116121825_AddedRatingTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220120190618_AddBlogAndBlogRatingRel', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220120192445_Deneme', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220120192711_DeleteDeneme', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220121194135_UpdateBlogRatings', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220121195758_UpdateBlogRatings2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220122120959_AddCityTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220122121242_UpdateCityTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220122124748_AddCityTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220122140402_AddNotificationTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220122142359_UpdateNotificationTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220122142426_UpdateNotificationTable2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220122151345_AddMessageTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220123134325_WriterAndMessage2Rel', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220125202550_UpdateWriter', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220125205427_UpdateWriter2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224191936_AddAdmin', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220304182334_IdentityAdded', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220304183758_IdentityUpdated', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220304191049_IdentityRemoved', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220304191404_IdentityAdded2', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220314192509_PluckRelationBlogAndWriter', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220327095826_MessageRelation', N'5.0.13')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutId], [Detail1], [Detail2], [Image], [Title], [Status], [MapLocation]) VALUES (1, N'A blog (a truncation of "weblog") is a discussion or informational website published on the World Wide Web consisting of discrete, often informal diary-style text entries (posts). Posts are typically displayed in reverse chronological order, so that the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual, occasionally of a small group, and often covered a single subject or topic. In the 2010s, "multi-author blogs" (MABs) emerged, featuring the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other "microblogging" systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or add content to a blog.

The emergence and growth of blogs in the late 1990s coincided with the advent of web publishing tools that facilitated the posting of content by non-technical users who did not have much experience with HTML or computer programming. Previously, a knowledge of such technologies as HTML and File Transfer Protocol had been required to publish content on the Web, and early Web users therefore tended to be hackers and computer enthusiasts. In the 2010s, the majority are interactive Web 2.0 websites, allowing visitors to leave online comments, and it is this interactivity that distinguishes them from other static websites. In that sense, blogging can be seen as a form of social networking service. Indeed, bloggers not only produce content to post on their blogs but also often build social relations with their readers and other bloggers. However, there are high-readership blogs which do not allow comments.

Many blogs provide commentary on a particular subject or topic, ranging from philosophy, religion, and arts to science, politics, and sports. Others function as more personal online diaries or online brand advertising of a particular individual or company. A typical blog combines text, digital images, and links to other blogs, web pages, and other media related to its topic. The ability of readers to leave publicly viewable comments, and interact with other commenters, is an important contribution to the popularity of many blogs. However, blog owners or authors often moderate and filter online comments to remove hate speech or other offensive content. Most blogs are primarily textual, although some focus on art (art blogs), photographs (photoblogs), videos (video blogs or "vlogs"), music (MP3 blogs), and audio (podcasts). In education, blogs can be used as instructional resources; these are referred to as edublogs. Microblogging is another type of blogging, featuring very short posts.

''Blog'' and ''blogging'' are now loosely used for content creation and sharing on social media, especially when the content is long-form and one creates and shares content on regular basis. So, one could be maintaining a blog on Facebook or blogging on Instagram.

On February 16, 2011, there were over 156 million public blogs in existence. On February 20, 2014, there were around 172 million Tumblr and 75.8 million WordPress blogs in existence worldwide. According to critics and other bloggers, Blogger is the most popular blogging service used today. However, Blogger does not offer public statistics. Technorati lists 1.3 million blogs as of February 22, 2014.', N'The term "weblog" was coined by Jorn Barger on December 17, 1997. The short form, "blog", was coined by Peter Merholz, who jokingly broke the word weblog into the phrase we blog in the sidebar of his blog Peterme.com in April or May 1999. Shortly thereafter, Evan Williams at Pyra Labs used "blog" as both a noun and verb ("to blog", meaning "to edit one''s weblog or to post to one''s weblog") and devised the term "blogger" in connection with Pyra Labs'' Blogger product, leading to the popularization of the terms.', N'/themes/BBlogTheme/images/b5.jpg', N'About BBlog', 1, NULL)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminId], [UserName], [Name], [Password], [ShortDescription], [Image], [Email], [Phone], [Role]) VALUES (1, N'Bedirhan', N'Bedirhan Erkılıç', N'admin', N'Software Developer', N'/themes/BBlogAdminTheme/img/a4.jpg', N'erkilicbedirhanv2@gmail.com', N'539 899 5545', N'A')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Writer', N'WRITER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'Moderator', N'MODERATOR', NULL)
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (3, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 4)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [Image], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'Bedirhan', N'Erkılıç', N'https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png', N'Bedirhan', N'BEDIRHAN', N'erkilicbedirhan@gmail.com', N'ERKILICBEDIRHAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEI/7ASp5xOBrANgHq3PUbaEMqQGTwMSmNZ381VCp8+zvu3TUu5HResu65BH7JCogg==', N'K63M7MEP3AZO2B53P5JER2CT6KFKUH2E', N'fa7742f3-5143-470b-b65e-e997d163985b', N'5398995545', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [Image], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (3, N'İsmail', N'Erkılıç', N'https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png', N'Ismail', N'ISMAIL', N'ismail@gmail.com', N'ISMAIL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP/+HPH9T7zuNXh80L381XrM3Ui8hqLLldoOoCG08I4kjQRtm2p6aiP1Xzk18ZBbdw==', N'3F4RCCHO7RO3TERCKMAO2GWEFIGEAY6S', N'86f4968e-1ca7-4a0f-8d62-e5373b584cb9', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogRatings] ON 

INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (1, 21, CAST(10.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (2, 12, CAST(45.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (3, 14, CAST(19.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (4, 15, CAST(6.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (7, 16, CAST(7.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (8, 17, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (9, 18, CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (10, 19, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (16, 32, CAST(0.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[BlogRatings] ([BlogRatingId], [BlogId], [TotalPoint], [CommentNumber]) VALUES (17, 33, CAST(0.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[BlogRatings] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (12, N'La Casa De Papel', N'To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion memorizing every step, every detail, every probability culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing. Best character is Tokio.', N'/themes/BBlogTheme/images/1.jpg', N'/themes/BBlogTheme/images/b1.jpg', CAST(N'2021-12-03T00:00:00.0000000' AS DateTime2), 1, 7, 2, 2)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (14, N'Breaking Bad', N'When chemistry teacher Walter White is diagnosed with Stage III cancer and given only two years to live, he decides he has nothing to lose. He lives with his teenage son, who has cerebral palsy, and his wife, in New Mexico. Determined to ensure that his family will have a secure future, Walt embarks on a career of drugs and crime. He proves to be remarkably proficient in this new world as he begins manufacturing and selling methamphetamine with one of his former students. The series tracks the impacts of a fatal diagnosis on a regular, hard working man, and explores how a fatal diagnosis affects his morality and transforms him into a major player of the drug trade. I love Pinkman.', N'/themes/BBlogTheme/images/2.jpg', N'/themes/BBlogTheme/images/b1.jpg', CAST(N'2021-12-03T00:00:00.0000000' AS DateTime2), 1, 7, 2, 3)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (15, N'The Shawshank Redempt.', N'Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man''s unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.', N'/themes/BBlogTheme/images/3.jpg', N'/themes/BBlogTheme/images/b1.jpg', CAST(N'2021-12-03T00:00:00.0000000' AS DateTime2), 1, 6, 2, 4)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (16, N'Arsen Lupen - Kibar Hirsiz', N' O, kurnaz, yakışıklı, türlü zorlukların içinden sıyrılıp çıkmayı başaran, hazır cevap bir suç dehası! O, polisi parmağının ucunda oynatan cesur bir antikahraman..', N'/themes/BBlogTheme/images/4.jpg', N'/themes/BBlogTheme/images/b1.jpg', CAST(N'2021-12-03T00:00:00.0000000' AS DateTime2), 1, 12, 2, 7)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (17, N'Pardon', N'Based on a true event, Pardon tells the tragicomic story of three friends who end up in prison when they are mistaken as members of a terrorist organization. Ibrahim''s fear of uniforms makes him runaway whenever he sees one. Because of this, police mistakes him with a terrorist and takes him and his friend Muzo into custody. Fooled by the police during the interrogation they name another friend, Aydin, in hope of saving themselves. As they all end up in prison, they remember the families and lovers they left behind.', N'/themes/BBlogTheme/images/1.jpg', N'/themes/BBlogTheme/images/b1.jpg', CAST(N'2021-12-13T20:23:27.6723453' AS DateTime2), 1, 6, 2, 8)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (18, N'The Dark Knight', N'Set within a year after the events of Batman Begins (2005), Batman, Lieutenant James Gordon, and new District Attorney Harvey Dent successfully begin to round up the criminals that plague Gotham City, until a mysterious and sadistic criminal mastermind known only as "The Joker" appears in Gotham, creating a new wave of chaos. Batman''s struggle against The Joker becomes deeply personal, forcing him to "confront everything he believes" and improve his technology to stop him. A love triangle develops between Bruce Wayne, Dent, and Rachel Dawes.', N'/themes/BBlogTheme/images/2.jpg', N'/themes/BBlogTheme/images/b1.jpg', CAST(N'2021-12-13T21:12:21.5592591' AS DateTime2), 1, 6, 2, 9)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (19, N'Forrest Gump', N'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', N'/themes/BBlogTheme/images/1.jpg', N'/themes/BBlogTheme/images/1.jpg', CAST(N'2022-01-14T23:36:21.0285075' AS DateTime2), 1, 6, 3, 10)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (21, N'The Matrix', N'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.

', N'/themes/BBlogTheme/images/1.jpg', N'/themes/BBlogTheme/images/1.jpg', CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2), 1, 6, 3, 1)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (32, N'Animal Farm', N'Animal Farm is a satirical allegorical novella by George Orwell, first published in England on 17 August 1945. The book tells the story of a group of farm animals who rebel against their human farmer, hoping to create a society where the animals can be equal, free, and happy. Ultimately, the rebellion is betrayed, and the farm ends up in a state as bad as it was before, under the dictatorship of a pig named Napoleon.

', N'/themes/BBlogTheme/images/4.jpg', N'/themes/BBlogTheme/images/4.jpg', CAST(N'2022-01-20T23:01:32.8624496' AS DateTime2), 1, 12, 3, 16)
INSERT [dbo].[Blogs] ([BlogId], [Title], [BlogContent], [ThumbnailImage], [Image], [CreDate], [Status], [CategoryId], [WriterId], [BlogRatingId]) VALUES (33, N'Baby Driver', N'Baby is a young and partially hearing impaired getaway driver who can make any wild move while in motion with the right track playing. It''s a critical talent he needs to survive his indentured servitude to the crime boss, Doc, who values his role in his meticulously planned robberies. However, just when Baby thinks he is finally free and clear to have his own life with his new girlfriend, Debora, Doc coerces him back for another job. Now saddled with a crew of thugs too violently unstable to keep to Doc''s plans, Baby finds himself and everything he cares for in terrible danger. To survive and escape the coming maelstrom, it will take all of Baby''s skill, wits and daring, but even on the best track, can he make it when life is forcing him to face the music???', N'/themes/BBlogTheme/images/1.jpg', N'/themes/BBlogTheme/images/b1.jpg', CAST(N'2022-03-14T22:49:16.2749734' AS DateTime2), 0, 6, 2, 17)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (6, N'Film', N'Film', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (7, N'Series', N'Series', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (9, N'Software', N'Software', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (11, N'Politics', N'Politics', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (12, N'Books', N'Books', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (13, N'Sports', N'Sports', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (14, N'Football', N'Football', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (15, N'Pc Games', N'Pc Games', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (16, N'Basketball', N'Basketball', 0)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (17, N'Economy', N'Economy', 0)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (18, N'Volleyball', N'Volleyball', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (19, N'Trip', N'Trip', 1)
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [Status]) VALUES (20, N'Handball', N'Handball', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (1, N'ADANA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (3, N'AFYON')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (4, N'AGRI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (5, N'AMASYA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (6, N'ANKARA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (7, N'ANTALYA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (8, N'ARTVIN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (9, N'AYDIN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (10, N'BALIKESIR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (11, N'BILECIK')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (12, N'BINGÖL')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (13, N'BITLIS')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (14, N'BOLU')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (15, N'BURDUR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (16, N'BURSA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (19, N'ÇORUM')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (20, N'DENIZLI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (21, N'DIYARBAKIR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (22, N'EDIRNE')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (23, N'ELAZIG')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (24, N'ERZINCAN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (25, N'ERZURUM')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (26, N'ESKISEHIR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (27, N'GAZIANTEP')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (28, N'GIRESUN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (29, N'GÜMÜSHANE')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (30, N'HAKKARI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (31, N'HATAY')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (32, N'ISPARTA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (33, N'IÇEL')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (34, N'ISTANBUL')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (35, N'IZMIR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (36, N'KARS')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (38, N'KAYSERI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (39, N'KIRKLARELI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (40, N'KIRSEHIR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (41, N'KOCAELI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (42, N'KONYA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (44, N'MALATYA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (45, N'MANISA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (46, N'KAHRAMANMARAS')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (47, N'MARDIN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (48, N'MUGLA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (49, N'MUS')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (50, N'NEVSEHIR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (51, N'NIGDE')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (52, N'ORDU')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (53, N'RIZE')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (54, N'SAKARYA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (55, N'SAMSUN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (56, N'SIIRT')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (57, N'SINOP')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (58, N'SIVAS')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (59, N'TEKIRDAG')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (60, N'TOKAT')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (61, N'TRABZON')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (62, N'TUNCELI')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (63, N'SANLIURFA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (64, N'USAK')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (65, N'VAN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (66, N'YOZGAT')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (68, N'AKSARAY')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (69, N'BAYBURT')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (70, N'KARAMAN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (72, N'BATMAN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (73, N'SIRNAK')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (74, N'BARTIN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (76, N'IGDIR')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (77, N'YALOVA')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (78, N'KARABÜK')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (79, N'KILIS')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (80, N'OSMANIYE')
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (7, N'Bedirhan Erkılıç', N'Harika', N'Yakın zamanda bitmiş en güzel dizilerden bir tanesi.', CAST(N'2021-12-08T21:48:08.3662321' AS DateTime2), 1, 12, 7)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (8, N'İsmail Erkılıç', N'Mükemmel', N'Favori dizim <3. Ama son sezondan beklediğimi alamadım.', CAST(N'2021-12-11T16:28:40.1674928' AS DateTime2), 1, 12, 8)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (9, N'Hasan Ekmekçi', N'Tavsiye', N'Diziyi izlemeden önce bir göz gezdirmek için geldim.', CAST(N'2021-12-11T16:31:52.6604062' AS DateTime2), 1, 12, 3)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (10, N'Hüseyin Bardak', N'Harika', N'Mükemmel bir dizi favori karakterim Berlin.', CAST(N'2021-12-11T16:32:50.2931261' AS DateTime2), 1, 12, 4)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (11, N'Zehra Koç', N'İdare eder', N'Çok güzel olmadığını daha güzel dizilerin olduğunu düşünüyorum.', CAST(N'2021-12-11T16:38:40.7236240' AS DateTime2), 1, 12, 5)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (12, N'Kübra Kam', N'Mük', N'İzlediğim en güzel film budur net.', CAST(N'2021-12-11T16:52:38.8863366' AS DateTime2), 1, 15, 6)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (13, N'Can Korkmaz', N'Güzel', N'Güzel ama Lupen biraz abartılmış. Shelock ile çok karşılaştırılmış.', CAST(N'2021-12-11T17:06:30.1418035' AS DateTime2), 1, 16, 7)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (14, N'Bedirhan Erkılıç', N'Mükemmel Bir Dizi', N'İlk izlediğim dizi. Kısaca hayran kaldım diyebilirim. İzlemenizi tavsiye ederim.', CAST(N'2022-01-11T23:28:35.0691769' AS DateTime2), 1, 14, 9)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (15, N'Ali Güneş', N'Perfect', N'Eskilerin en güzel filmi.', CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2), 1, 21, 10)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (18, N'Burcu Bak', N'Üzücü', N'Son sezon beni çok  üzdü.', CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2), 1, 12, 10)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (19, N'Ahmet Hakan', N'Güzel', N'İyi bir diziydi. Soygun dizileri arasında favorim diyebilirim heralde.', CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2), 1, 12, 8)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (20, N'Melih Göç', N'Mükemmmellllll', N'Harika bir dizi. Kesinlikle izlenmeli.', CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2), 1, 14, 10)
INSERT [dbo].[Comments] ([CommentId], [UserName], [Title], [CommentContent], [CreDate], [Status], [BlogId], [Point]) VALUES (21, N'Müslüm Gürses', N'Harika', N'Tom Hardy''nin oyunculuğu harika.', CAST(N'2022-03-12T16:31:18.6064029' AS DateTime2), 1, 18, 0)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactId], [UserName], [Mail], [Subject], [Message], [CreDate], [Status]) VALUES (1, N'Bedirhan Erkılıç', N'erkilicbedirhan@gmail.com', N'Test', N'Merhaba bu bir test mesajdır.', CAST(N'2021-12-08T23:21:36.1887412' AS DateTime2), 1)
INSERT [dbo].[Contacts] ([ContactId], [UserName], [Mail], [Subject], [Message], [CreDate], [Status]) VALUES (2, N'İsmail Erkılıç', N'ismail@gmail.com', N'Teşekkür', N'Bu sitede çok eğlenceli vakit geçiriyorum ve bir çok bilgi kazanıyorum. ', CAST(N'2021-12-09T22:58:39.3578804' AS DateTime2), 1)
INSERT [dbo].[Contacts] ([ContactId], [UserName], [Mail], [Subject], [Message], [CreDate], [Status]) VALUES (3, N'Ahmet Can', N'ahmet@gmail.com', N'Fikir', N'Bu sitenin eksiklerinden bir tanesi de bloglara puan verilememesidir.', CAST(N'2021-12-09T23:00:48.6457563' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Message2s] ON 

INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [Detail], [Date], [Status]) VALUES (16, 2, 3, N'Hata', N'Ekteki gibi bir hata alıyorum yardımcı olur musunuz?', CAST(N'2022-03-27T13:43:33.5508103' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [Detail], [Date], [Status]) VALUES (17, 3, 2, N'Başarı', N'Tebrikler!!! Ödül kazandınız.', CAST(N'2022-03-27T13:55:52.2709227' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageId], [SenderId], [ReceiverId], [Subject], [Detail], [Date], [Status]) VALUES (18, 2, 3, N'Güncelleme', N'Bu son güncelleme ile hata almaya başladık. Haberiniz olsun.', CAST(N'2022-03-27T17:40:26.8115770' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Message2s] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageId], [Sender], [Receiver], [Subject], [Detail], [Date], [Status]) VALUES (1, N'ali@gmail.com', N'erkilicbedirhan@gmail.com', N'Merhaba', N'Bu sitede senin gibi bir yazar ile yazdığım için çok mutluyum.', CAST(N'2022-01-22T13:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[NewsLetters] ON 

INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (1, N'deneme@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (2, N'erkilicbedirhan@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (19, N'deneme2@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (20, N'deneme3@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (21, N'deneme4@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (22, N'deneme5@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (23, N'deneme6@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (24, N'deneme7@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (25, N'deneme8@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (26, N'deneme9@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (27, N'deneme10@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (28, N'deneme11@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (29, N'deneme12@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (30, N'deneme13@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (31, N'deneme14@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (32, N'test1@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([EmailId], [Email], [Status]) VALUES (35, N'test2@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[NewsLetters] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationId], [Type], [Color], [Detail], [Date], [Status], [Symbol]) VALUES (2, N'Günlük Toplantı', N'bg-success', N'Merhabalar, saat 09:00''da toplantı var.', CAST(N'2021-01-21T09:00:00.0000000' AS DateTime2), 1, N'mdi mdi-calendar')
INSERT [dbo].[Notifications] ([NotificationId], [Type], [Color], [Detail], [Date], [Status], [Symbol]) VALUES (3, N'Doğum Günü', N'bg-warning', N'Merhaba, yazarlarımızdan Ahmet''in doğum günü yapılacaktır.', CAST(N'2022-01-22T00:00:00.0000000' AS DateTime2), 1, N'mdi mdi-settings')
INSERT [dbo].[Notifications] ([NotificationId], [Type], [Color], [Detail], [Date], [Status], [Symbol]) VALUES (4, N'Sistem Güncellemesi', N'bg-info', N'Yarın gece 03:00''da sistem güncellemesi vardır.', CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2), 1, N'mdi mdi-link-variant')
INSERT [dbo].[Notifications] ([NotificationId], [Type], [Color], [Detail], [Date], [Status], [Symbol]) VALUES (5, N'Yeni Yazı', N'bg-primary', N'Bugün 2 yeni blog eklendi.', CAST(N'2022-01-25T00:00:00.0000000' AS DateTime2), 1, N'mdi mdi-food-apple
')
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_BlogRatingId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_BlogRatingId] ON [dbo].[Blogs]
(
	[BlogRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_CategoryId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_CategoryId] ON [dbo].[Blogs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_BlogId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_BlogId] ON [dbo].[Comments]
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Message2s_ReceiverId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Message2s_ReceiverId] ON [dbo].[Message2s]
(
	[ReceiverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Message2s_SenderId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Message2s_SenderId] ON [dbo].[Message2s]
(
	[SenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Writers_CityId]    Script Date: 4/7/2022 11:25:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Writers_CityId] ON [dbo].[Writers]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ((0)) FOR [WriterId]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT ((0)) FOR [BlogId]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_BlogRatings_BlogRatingId] FOREIGN KEY([BlogRatingId])
REFERENCES [dbo].[BlogRatings] ([BlogRatingId])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_BlogRatings_BlogRatingId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([BlogId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Message2s]  WITH CHECK ADD  CONSTRAINT [FK_Message2s_AspNetUsers_ReceiverId] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Message2s] CHECK CONSTRAINT [FK_Message2s_AspNetUsers_ReceiverId]
GO
ALTER TABLE [dbo].[Message2s]  WITH CHECK ADD  CONSTRAINT [FK_Message2s_AspNetUsers_SenderId] FOREIGN KEY([SenderId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Message2s] CHECK CONSTRAINT [FK_Message2s_AspNetUsers_SenderId]
GO
ALTER TABLE [dbo].[Writers]  WITH CHECK ADD  CONSTRAINT [FK_Writers_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Writers] CHECK CONSTRAINT [FK_Writers_Cities_CityId]
GO
/****** Object:  Trigger [dbo].[AddBlogRatingInBlog]    Script Date: 4/7/2022 11:25:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AddBlogRatingInBlog]
ON [dbo].[BlogRatings]
AFTER INSERT
AS
DECLARE @blogRatingId int
DECLARE @blogId int
SELECT @blogRatingId = BlogRatingId, @blogId = BlogId FROM inserted
UPDATE Blogs 
SET BlogRatingId = @blogRatingId
WHERE Blogs.BlogId = @blogId
GO
ALTER TABLE [dbo].[BlogRatings] ENABLE TRIGGER [AddBlogRatingInBlog]
GO
/****** Object:  Trigger [dbo].[AddBlogInRatingTable]    Script Date: 4/7/2022 11:25:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AddBlogInRatingTable]
ON [dbo].[Blogs]
AFTER INSERT
AS
DECLARE @blogId int
SELECT @blogId = BlogId FROM inserted
INSERT INTO BlogRatings (BlogId, TotalPoint, CommentNumber)
VALUES (@blogId, 0, 0)
GO
ALTER TABLE [dbo].[Blogs] ENABLE TRIGGER [AddBlogInRatingTable]
GO
/****** Object:  Trigger [dbo].[UpdateBlogRating]    Script Date: 4/7/2022 11:25:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UpdateBlogRating]
ON [dbo].[Comments]
AFTER INSERT
AS
DECLARE @blogId int
DECLARE @point int
SELECT @blogId = BlogId, @point = Point FROM inserted
UPDATE BlogRatings
SET TotalPoint = TotalPoint + @point, 
CommentNumber = CommentNumber + 1
WHERE BlogId = @blogId

GO
ALTER TABLE [dbo].[Comments] ENABLE TRIGGER [UpdateBlogRating]
GO
USE [master]
GO
ALTER DATABASE [BBlogDb] SET  READ_WRITE 
GO

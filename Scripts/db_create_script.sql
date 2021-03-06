USE [master]
GO
/****** Object:  Database [watchVideo_db]    Script Date: 20/05/2022 17:37:49 ******/
CREATE DATABASE [watchVideo_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'watchVideo_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\watchVideo_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'watchVideo_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\watchVideo_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [watchVideo_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [watchVideo_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [watchVideo_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [watchVideo_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [watchVideo_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [watchVideo_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [watchVideo_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [watchVideo_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [watchVideo_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [watchVideo_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [watchVideo_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [watchVideo_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [watchVideo_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [watchVideo_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [watchVideo_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [watchVideo_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [watchVideo_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [watchVideo_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [watchVideo_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [watchVideo_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [watchVideo_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [watchVideo_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [watchVideo_db] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [watchVideo_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [watchVideo_db] SET RECOVERY FULL 
GO
ALTER DATABASE [watchVideo_db] SET  MULTI_USER 
GO
ALTER DATABASE [watchVideo_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [watchVideo_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [watchVideo_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [watchVideo_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [watchVideo_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [watchVideo_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'watchVideo_db', N'ON'
GO
ALTER DATABASE [watchVideo_db] SET QUERY_STORE = OFF
GO
USE [watchVideo_db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/05/2022 17:37:49 ******/
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
/****** Object:  Table [dbo].[Videos]    Script Date: 20/05/2022 17:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[VideoSrc] [nvarchar](max) NOT NULL,
	[UploadDate] [datetime2](7) NOT NULL,
	[VideoThumbnail] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511233328_InitialCreate', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220512003030_Changes', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220515232836_Changes2', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[Videos] ON 

INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (1, N'Big Buck Bunny', N'Big Buck Bunny tells the story of a giant rabbit with a heart bigger than himself. When one sunny day three rodents rudely harass him, something snaps... and the rabbit ain''t no bunny anymore! In the typical cartoon tradition he prepares the nasty rodents a comical revenge.\n\nLicensed under the Creative Commons Attribution license\nhttp://www.bigbuckbunny.org', N'vid/BigBuckBunny.webm', CAST(N'2022-05-20T00:00:00.0000000' AS DateTime2), N'img/BigBuckBunny.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (4, N'Elephant Dream', N'The first Blender Open Movie from 2006', N'vid/ElephantDream.webm', CAST(N'2022-05-17T00:00:00.0000000' AS DateTime2), N'img/ElephantsDream.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (6, N'For Bigger Blazes', N'HBO GO now works with Chromecast -- the easiest way to enjoy online video on your TV. For when you want to settle into your Iron Throne to watch the latest episodes. For $35.\nLearn how to use Chromecast with HBO GO and more at google.com/chromecast.', N'vid/ForBiggerBlazes.webm', CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2), N'img/ForBiggerBlazes.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (7, N'For Bigger Escape', N'Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for when Batman''s escapes aren''t quite big enough. For $35. Learn how to use Chromecast with Google Play Movies and more at google.com/chromecast.', N'vid/ForBiggerEscapes.webm', CAST(N'2022-05-09T00:00:00.0000000' AS DateTime2), N'img/ForBiggerEscapes.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (9, N'For Bigger Fun', N'Introducing Chromecast. The easiest way to enjoy online video and music on your TV. For $35.  Find out more at google.com/chromecast.', N'vid/ForBiggerFun.webm', CAST(N'2022-05-08T00:00:00.0000000' AS DateTime2), N'img/ForBiggerFun.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (10, N'For Bigger Joyrides', N'Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for the times that call for bigger joyrides. For $35. Learn how to use Chromecast with YouTube and more at google.com/chromecast.', N'vid/ForBiggerJoyrides.webm', CAST(N'2022-05-07T00:00:00.0000000' AS DateTime2), N'img/ForBiggerJoyrides.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (12, N'For Bigger Meltdowns', N'Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for when you want to make Buster''s big meltdowns even bigger. For $35. Learn how to use Chromecast with Netflix and more at google.com/chromecast.', N'vid/ForBiggerMeltdowns.webm', CAST(N'2022-05-02T00:00:00.0000000' AS DateTime2), N'img/ForBiggerMeltdowns.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (13, N'Sintel', N'Sintel is an independently produced short film, initiated by the Blender Foundation as a means to further improve and validate the free/open source 3D creation suite Blender. With initial funding provided by 1000s of donations via the internet community, it has again proven to be a viable development model for both open 3D technology as for independent animation film.\nThis 15 minute film has been realized in the studio of the Amsterdam Blender Institute, by an international team of artists and developers. In addition to that, several crucial technical and creative targets have been realized online, by developers and artists and teams all over the world.\nwww.sintel.org', N'vid/Sintel.webm', CAST(N'2022-04-20T00:00:00.0000000' AS DateTime2), N'img/Sintel.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (14, N'Subaru Outback On Street And Dirt', N'Smoking Tire takes the all-new Subaru Outback to the highest point we can find in hopes our customer-appreciation Balloon Launch will get some free T-shirts into the hands of our viewers.', N'vid/SubaruOutbackOnStreetAndDirt.webm', CAST(N'2022-04-18T00:00:00.0000000' AS DateTime2), N'img/SubaruOutbackOnStreetAndDirt.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (15, N'Tears of Steel', N'Tears of Steel was realized with crowd-funding by users of the open source 3D creation tool Blender. Target was to improve and test a complete open and free pipeline for visual effects in film - and to make a compelling sci-fi film in Amsterdam, the Netherlands.  The film itself, and all raw material used for making it, have been released under the Creatieve Commons 3.0 Attribution license. Visit the tearsofsteel.org website to find out more about this, or to purchase the 4-DVD box with a lot of extras.  (CC) Blender Foundation - http://www.tearsofsteel.org', N'vid/TearsOfSteel.webm', CAST(N'2022-04-16T00:00:00.0000000' AS DateTime2), N'img/TearsOfSteel.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (16, N'Volkswagen GTI Review', N'The Smoking Tire heads out to Adams Motorsports Park in Riverside, CA to test the most requested car of 2010, the Volkswagen GTI. Will it beat the Mazdaspeed3''s standard-setting lap time? Watch and see...', N'vid/VolkswagenGTIReview.webm', CAST(N'2022-04-15T00:00:00.0000000' AS DateTime2), N'img/VolkswagenGTIReview.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (17, N'We Are Going On Bullrun', N'The Smoking Tire is going on the 2010 Bullrun Live Rally in a 2011 Shelby GT500, and posting a video from the road every single day! The only place to watch them is by subscribing to The Smoking Tire or watching at BlackMagicShine.com', N'vid/WeAreGoingOnBullrun.webm', CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2), N'img/WeAreGoingOnBullrun.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (18, N'What care can you get for a grand?', N'The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far $1,000 can go when looking for a car.The Smoking Tire meets up with Chris and Jorge from CarsForAGrand.com to see just how far $1,000 can go when looking for a car.', N'vid/WhatCarCanYouGetForAGrand.webm', CAST(N'2022-04-11T00:00:00.0000000' AS DateTime2), N'img/WhatCarCanYouGetForAGrand.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (20, N'Example Video 1', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/BigBuckBunny.webm', CAST(N'2022-04-09T00:00:00.0000000' AS DateTime2), N'img/BigBuckBunny.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (21, N'Example Video 2', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/ForBiggerEscapes.webm', CAST(N'2022-04-08T00:00:00.0000000' AS DateTime2), N'img/ForBiggerEscapes.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (22, N'Example Video 3', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/Sintel.webm', CAST(N'2022-04-07T00:00:00.0000000' AS DateTime2), N'img/Sintel.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (23, N'Example Video 4', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/TearsOfSteel.webm', CAST(N'2022-04-07T00:00:00.0000000' AS DateTime2), N'img/TearsOfSteel.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (24, N'Example Video 5', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/VolkswagenGTIReview.webm', CAST(N'2022-04-06T00:00:00.0000000' AS DateTime2), N'img/VolkswagenGTIReview.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (25, N'Example Video 6', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/TearsOfSteel.webm', CAST(N'2022-04-05T00:00:00.0000000' AS DateTime2), N'img/TearsOfSteel.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (26, N'Example Video 7', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/WeAreGoingOnBullrun.webm', CAST(N'2022-04-04T00:00:00.0000000' AS DateTime2), N'img/WeAreGoingOnBullrun.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (27, N'Example Video 8', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/ForBiggerBlazes.webm', CAST(N'2022-04-03T00:00:00.0000000' AS DateTime2), N'img/ForBiggerBlazes.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (28, N'Example Video 9', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/ElephantDream.webm', CAST(N'2022-04-02T00:00:00.0000000' AS DateTime2), N'img/ElephantsDream.jpg')
INSERT [dbo].[Videos] ([Id], [Title], [Description], [VideoSrc], [UploadDate], [VideoThumbnail]) VALUES (29, N'Example Video 10', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et elit nulla. Proin tellus ex, maximus vel mauris vitae, malesuada sagittis erat.', N'vid/ForBiggerJoyrides.webm', CAST(N'2022-04-01T00:00:00.0000000' AS DateTime2), N'img/ForBiggerJoyrides.jpg')
SET IDENTITY_INSERT [dbo].[Videos] OFF
GO
ALTER TABLE [dbo].[Videos] ADD  DEFAULT (N'') FOR [VideoThumbnail]
GO
USE [master]
GO
ALTER DATABASE [watchVideo_db] SET  READ_WRITE 
GO

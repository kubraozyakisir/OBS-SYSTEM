USE [master]
GO
/****** Object:  Database [DbMvcOkul]    Script Date: 28.03.2022 20:52:21 ******/
CREATE DATABASE [DbMvcOkul]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbMvcOkul', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbMvcOkul.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbMvcOkul_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbMvcOkul_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbMvcOkul] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbMvcOkul].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbMvcOkul] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbMvcOkul] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbMvcOkul] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbMvcOkul] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbMvcOkul] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbMvcOkul] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbMvcOkul] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbMvcOkul] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbMvcOkul] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbMvcOkul] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbMvcOkul] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbMvcOkul] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbMvcOkul] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbMvcOkul] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbMvcOkul] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbMvcOkul] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbMvcOkul] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbMvcOkul] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbMvcOkul] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbMvcOkul] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbMvcOkul] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbMvcOkul] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbMvcOkul] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbMvcOkul] SET  MULTI_USER 
GO
ALTER DATABASE [DbMvcOkul] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbMvcOkul] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbMvcOkul] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbMvcOkul] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbMvcOkul] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbMvcOkul] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DbMvcOkul] SET QUERY_STORE = OFF
GO
USE [DbMvcOkul]
GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 28.03.2022 20:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[DersID] [int] IDENTITY(1,1) NOT NULL,
	[DersAd] [varchar](50) NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[DersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kulupler]    Script Date: 28.03.2022 20:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kulupler](
	[KulupID] [int] IDENTITY(1,1) NOT NULL,
	[KulupAd] [varchar](50) NULL,
	[KulupKontejyan] [smallint] NULL,
 CONSTRAINT [PK_Kulupler] PRIMARY KEY CLUSTERED 
(
	[KulupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notlar]    Script Date: 28.03.2022 20:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notlar](
	[NotID] [int] IDENTITY(1,1) NOT NULL,
	[DersID] [int] NULL,
	[OgrID] [int] NULL,
	[Sınav1] [tinyint] NULL,
	[Sınav2] [tinyint] NULL,
	[Sınav3] [tinyint] NULL,
	[Proje] [tinyint] NULL,
	[Ortalama] [decimal](18, 2) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Notlar] PRIMARY KEY CLUSTERED 
(
	[NotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 28.03.2022 20:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[OgrenciID] [int] IDENTITY(1,1) NOT NULL,
	[OgrAd] [varchar](20) NULL,
	[OgrSoyad] [varchar](20) NULL,
	[OgrFotograf] [varchar](200) NULL,
	[OgrCinsiyet] [varchar](5) NULL,
	[OgrKulup] [int] NULL,
 CONSTRAINT [PK_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[OgrenciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dersler] ON 

INSERT [dbo].[Dersler] ([DersID], [DersAd]) VALUES (1, N'Data Mining')
INSERT [dbo].[Dersler] ([DersID], [DersAd]) VALUES (2, N'Networks')
INSERT [dbo].[Dersler] ([DersID], [DersAd]) VALUES (3, N'Artifical Intelligence')
INSERT [dbo].[Dersler] ([DersID], [DersAd]) VALUES (9, N'Computer Networks')
INSERT [dbo].[Dersler] ([DersID], [DersAd]) VALUES (10, N'Robotics Intelligence')
SET IDENTITY_INSERT [dbo].[Dersler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kulupler] ON 

INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (1, N'Abstract Connoisseurs', 120)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (2, N'Hypertext Assassins', 100)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (9, N'Callback Cats', 50)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (10, N'Boolean Autocrats', 30)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (11, N'CAMA Chronicles', 150)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (12, N'Runtime Terror', 60)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (13, N'Data Pirates', 50)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (14, N'Epic Virtual Boost', 50)
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd], [KulupKontejyan]) VALUES (15, N'Hack Inversion', 80)
SET IDENTITY_INSERT [dbo].[Kulupler] OFF
GO
SET IDENTITY_INSERT [dbo].[Notlar] ON 

INSERT [dbo].[Notlar] ([NotID], [DersID], [OgrID], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (4, 1, 1, 50, 60, 100, 100, CAST(75.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Notlar] ([NotID], [DersID], [OgrID], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (6, 1, 3, 100, 50, 20, 100, CAST(67.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Notlar] ([NotID], [DersID], [OgrID], [Sınav1], [Sınav2], [Sınav3], [Proje], [Ortalama], [Durum]) VALUES (7, 1, 10, 0, 0, 0, 100, CAST(25.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[Notlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogrenciler] ON 

INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (1, N'Kübra ', N'Özyakışır', N'https://www.hizliresim.com/bcqcesz', N'KADIN', 2)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (3, N'Özge', N'Gülten', N'https://www.hizliresim.com/bcqcesz', N'KADIN', 2)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (4, N'Ayşenur', N'Uğuz', N'https://www.hizliresim.com/bcqcesz', N'KADIN', 9)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (8, N'Hakan', N'Eren', N'https://www.hizliresim.com/jrbqwhp', N'ERKEK', 10)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (9, N'Mehmet ', N'Öztürk', N'https://www.hizliresim.com/jrbqwhp', N'ERKEK', 12)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (10, N'Emre', N'Coşkun', N'https://www.hizliresim.com/jrbqwhp', N'ERKEK', 13)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (11, N'Ender', N'Berçin', N'https://www.hizliresim.com/jrbqwhp', N'ERKEK', 14)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (12, N'Şevval', N'Çelik', N'https://www.hizliresim.com/bcqcesz', N'KADIN', 15)
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrAd], [OgrSoyad], [OgrFotograf], [OgrCinsiyet], [OgrKulup]) VALUES (13, N'Cüneyt', N'Ulusu', N'https://www.hizliresim.com/jrbqwhp', N'ERKEK', 15)
SET IDENTITY_INSERT [dbo].[Ogrenciler] OFF
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_Sınav1]  DEFAULT ((0)) FOR [Sınav1]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_Sınav2]  DEFAULT ((0)) FOR [Sınav2]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_Sınav3]  DEFAULT ((0)) FOR [Sınav3]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_Proje]  DEFAULT ((0)) FOR [Proje]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_Ortalama]  DEFAULT ((0)) FOR [Ortalama]
GO
ALTER TABLE [dbo].[Notlar] ADD  CONSTRAINT [DF_Notlar_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Notlar]  WITH CHECK ADD  CONSTRAINT [FK_Notlar_Dersler] FOREIGN KEY([DersID])
REFERENCES [dbo].[Dersler] ([DersID])
GO
ALTER TABLE [dbo].[Notlar] CHECK CONSTRAINT [FK_Notlar_Dersler]
GO
ALTER TABLE [dbo].[Notlar]  WITH CHECK ADD  CONSTRAINT [FK_Notlar_Ogrenciler] FOREIGN KEY([OgrID])
REFERENCES [dbo].[Ogrenciler] ([OgrenciID])
GO
ALTER TABLE [dbo].[Notlar] CHECK CONSTRAINT [FK_Notlar_Ogrenciler]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Kulupler] FOREIGN KEY([OgrKulup])
REFERENCES [dbo].[Kulupler] ([KulupID])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Kulupler]
GO
USE [master]
GO
ALTER DATABASE [DbMvcOkul] SET  READ_WRITE 
GO

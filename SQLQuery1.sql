USE [master]
GO
/****** Object:  Database [eva_tecnica]    Script Date: 17/12/2020 12:34:18 p. m. ******/
CREATE DATABASE [eva_tecnica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eva_tecnica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\eva_tecnica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eva_tecnica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\eva_tecnica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [eva_tecnica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eva_tecnica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eva_tecnica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eva_tecnica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eva_tecnica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eva_tecnica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eva_tecnica] SET ARITHABORT OFF 
GO
ALTER DATABASE [eva_tecnica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eva_tecnica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eva_tecnica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eva_tecnica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eva_tecnica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eva_tecnica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eva_tecnica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eva_tecnica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eva_tecnica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eva_tecnica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eva_tecnica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eva_tecnica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eva_tecnica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eva_tecnica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eva_tecnica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eva_tecnica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eva_tecnica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eva_tecnica] SET RECOVERY FULL 
GO
ALTER DATABASE [eva_tecnica] SET  MULTI_USER 
GO
ALTER DATABASE [eva_tecnica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eva_tecnica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eva_tecnica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eva_tecnica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eva_tecnica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eva_tecnica] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'eva_tecnica', N'ON'
GO
ALTER DATABASE [eva_tecnica] SET QUERY_STORE = OFF
GO
USE [eva_tecnica]
GO
/****** Object:  Table [dbo].[tablaa]    Script Date: 17/12/2020 12:34:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablaa](
	[idpersona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[telefono] [varchar](18) NOT NULL,
	[fecha] [date] NULL,
	[ciudad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [eva_tecnica] SET  READ_WRITE 
GO
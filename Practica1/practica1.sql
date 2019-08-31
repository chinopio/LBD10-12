USE [master]
GO
/****** Object:  Database [LBD10]    Script Date: 31/08/2019 11:28:15 a. m. ******/
DROP DATABASE [LBD10]
GO
/****** Object:  Database [LBD10]    Script Date: 31/08/2019 11:28:15 a. m. ******/
CREATE DATABASE [LBD10]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD10', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBD10.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD10_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBD10_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBD10] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD10].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD10] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD10] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD10] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD10] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD10] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD10] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LBD10] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD10] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD10] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD10] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD10] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD10] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD10] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD10] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD10] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBD10] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD10] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD10] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD10] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD10] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD10] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD10] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD10] SET RECOVERY FULL 
GO
ALTER DATABASE [LBD10] SET  MULTI_USER 
GO
ALTER DATABASE [LBD10] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD10] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD10] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD10] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBD10] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LBD10', N'ON'
GO
ALTER DATABASE [LBD10] SET QUERY_STORE = OFF
GO
USE [LBD10]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE [LBD10] SET  READ_WRITE 
GO

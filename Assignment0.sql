USE[group26hwmart]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [group26].[vendor]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[vendor]') AND type in (N'U'))
DROP TABLE [group26].[vendor]
GO

CREATE TABLE [group26].[vendor](
	[vendor_code] [int] Not NULL,
	[name] [varchar](50) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [group26].[time]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[time]') AND type in (N'U'))
DROP TABLE [group26].[time]
GO

CREATE TABLE [group26].[time](
	[time_id] [int] NULL,
	[year] [int] NULL,
	[month] [int] NULL,
	[day] [int] NULL,
	[week] [int] NULL,
	[quarter] [int] NULL,
	[day_of_week] [int] NULL
) ON [PRIMARY]
GO

USE [Group26HWMart]
GO

/****** Object:  Table [group26].[ram_sales]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[ram_sales]') AND type in (N'U'))
DROP TABLE [group26].[ram_sales]
GO

CREATE TABLE [group26].[ram_sales](
	[ram_code] [int] NULL,
	[time_code] [int] NULL,
	[geo_code] [int] NULL,
	[vendor_code] [int] NULL,
	[sales_usd] [varchar](50) NULL,
	[sales_currency] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [Group26HWMart]
GO

/****** Object:  Table [group26].[ram_product]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[ram_product]') AND type in (N'U'))
DROP TABLE [group26].[ram_product]
GO

CREATE TABLE [group26].[ram_product](
	[ram_code] [int] NULL,
	[brand] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[memory] [int] NULL,
	[memory_type] [varchar](50) NULL,
	[clock] [int] NULL
) ON [PRIMARY]
GO

USE [Group26HWMart]
GO

/****** Object:  Table [group26].[gpu_sales]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[gpu_sales]') AND type in (N'U'))
DROP TABLE [group26].[gpu_sales]
GO

CREATE TABLE [group26].[gpu_sales](
	[gpu_code] [int] NULL,
	[time_code] [int] NULL,
	[geo_code] [int] NULL,
	[vendor_code] [int] NULL,
	[sales_usd] [varchar](50) NULL,
	[sales_currency] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [Group26HWMart]
GO

/****** Object:  Table [group26].[gpu_product]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[gpu_product]') AND type in (N'U'))
DROP TABLE [group26].[gpu_product]
GO

CREATE TABLE [group26].[gpu_product](
	[gpu_code] [int] NULL,
	[processor] [varchar](50) NULL,
	[processor_manufacture] [varchar](50) NULL,
	[brand] [varchar](50) NULL,
	[memory] [int] NULL,
	[memory_type] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [Group26HWMart]
GO

/****** Object:  Table [group26].[geograpgy]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[geograpgy]') AND type in (N'U'))
DROP TABLE [group26].[geograpgy]
GO

CREATE TABLE [group26].[geograpgy](
	[geo_code] [int] NULL,
	[continent] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[currency] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [Group26HWMart]
GO

/****** Object:  Table [group26].[cpu_sales]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[cpu_sales]') AND type in (N'U'))
DROP TABLE [group26].[cpu_sales]
GO

CREATE TABLE [group26].[cpu_sales](
	[cpu_code] [int] NULL,
	[time_code] [int] NULL,
	[geo_code] [int] NULL,
	[vendor_code] [int] NULL,
	[sales_usd] [varchar](50) NULL,
	[sales_currency] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [Group26HWMart]
GO

/****** Object:  Table [group26].[cpu_product]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[cpu_product]') AND type in (N'U'))
DROP TABLE [group26].[cpu_product]
GO

CREATE TABLE [group26].[cpu_product](
	[cpu_code] [int] NULL,
	[brand] [varchar](50) NULL,
	[series] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[n_cores] [int] NULL,
	[socket] [varchar](50) NULL
) ON[primary]
GO


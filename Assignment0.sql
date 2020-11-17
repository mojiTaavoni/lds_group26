USE[group26hwmart]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Remove Object:  Table [group26].[ram_sales]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[ram_sales]') AND type in (N'U'))
DROP TABLE [group26].[ram_sales]
GO

/****** Remove Object:  Table [group26].[cpu_sales]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[cpu_sales]') AND type in (N'U'))
DROP TABLE [group26].[cpu_sales]
GO

/****** Remove Object:  Table [group26].[gpu_sales]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[gpu_sales]') AND type in (N'U'))
DROP TABLE [group26].[gpu_sales]
GO

/****** Remove Object:  Table [group26].[cpu_product]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[cpu_product]') AND type in (N'U'))
DROP TABLE [group26].[cpu_product]
GO

/****** Remove Object:  Table [group26].[ram_product]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[ram_product]') AND type in (N'U'))
DROP TABLE [group26].[ram_product]
GO

/****** Remove Object:  Table [group26].[gpu_product]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[gpu_product]') AND type in (N'U'))
DROP TABLE [group26].[gpu_product]
GO

/****** Remove Object:  Table [group26].[vendor]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[vendor]') AND type in (N'U'))
DROP TABLE [group26].[vendor]
GO

/****** Remove Object:  Table [group26].[geography]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[geography]') AND type in (N'U'))
DROP TABLE [group26].[geography]
GO

/****** Remove Create Object:  Table [group26].[time]  ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[group26].[time]') AND type in (N'U'))
DROP TABLE [group26].[time]
GO

/****** Create Object:  Table [group26].[vendor]  ******/
CREATE TABLE [group26].[vendor](
	[vendor_code] [int] NOT NULL,
	[name] [varchar](50) NULL,
	CONSTRAINT PK_vendor_code PRIMARY KEY (vendor_code)
);
GO

/****** Create Object:  Table [group26].[geography]  ******/
CREATE TABLE [group26].[geography](
	[geo_code] [int] NOT NULL,
	[continent] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[currency] [varchar](50) NULL,
	CONSTRAINT PK_geo_code PRIMARY KEY (geo_code)
);
GO

/****** Create Object:  Table [group26].[cpu_product]  ******/
CREATE TABLE [group26].[cpu_product](
	[cpu_code] [int] NOT NULL,
	[brand] [varchar](50) NULL,
	[series] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[n_cores] [int] NULL,
	[socket] [varchar](50) NULL,
	CONSTRAINT PK_cpu_code PRIMARY KEY (cpu_code)
);
GO

/****** Create Object:  Table [group26].[time]  ******/
CREATE TABLE [group26].[time](
	[time_id] [int] NOT NULL,
	[year] [int] NULL,
	[month] [int] NULL,
	[day] [int] NULL,
	[week] [int] NULL,
	[quarter] [int] NULL,
	[day_of_week] [int] NULL,
	CONSTRAINT PK_time_id PRIMARY KEY (time_id)
);
GO

/****** Create Object:  Table [group26].[gpu_product]  ******/
CREATE TABLE [group26].[gpu_product](
	[gpu_code] [int] NOT NULL,
	[processor] [varchar](50) NULL,
	[processor_manufacture] [varchar](50) NULL,
	[brand] [varchar](50) NULL,
	[memory] [int] NULL,
	[memory_type] [varchar](50) NULL,
	CONSTRAINT PK_gpu_code PRIMARY KEY (gpu_code)
);
GO

/****** Create Object:  Table [group26].[ram_product]  ******/
CREATE TABLE [group26].[ram_product](
	[ram_code] [int] NOT NULL,
	[brand] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[memory] [int] NULL,
	[memory_type] [varchar](50) NULL,
	[clock] [int] NULL,
	CONSTRAINT PK_ram_code PRIMARY KEY (ram_code)
);
GO

/****** Create Object:  Table [group26].[ram_sales]  ******/
CREATE TABLE [group26].[ram_sales](
  [ram_code] [int] NOT NULL,
  [time_code] [int] NULL,
  [geo_code] [int] NULL,
  [vendor_code] [int] NULL,
  [sales_usd] [varchar](50) NULL,
  [sales_currency] [varchar](50) NULL,
  CONSTRAINT PK_ram_sales PRIMARY KEY (ram_code),
  CONSTRAINT FK_ram_sales_ram_code FOREIGN KEY (ram_code) REFERENCES GROUP26.ram_product(ram_code),
  CONSTRAINT FK_ram_sales_vendor_code FOREIGN KEY (vendor_code) REFERENCES GROUP26.vendor(vendor_code),
  CONSTRAINT FK_ram_sales_time_code FOREIGN KEY (time_code) REFERENCES GROUP26.TIME(time_id),
  CONSTRAINT FK_ram_sales_geo_code FOREIGN KEY (geo_code) REFERENCES GROUP26.geography(geo_code)
);
GO

/****** Create Object:  Table [group26].[gpu_sales]  ******/
CREATE TABLE [group26].[gpu_sales](
	[gpu_code] [int] NOT NULL,
	[time_code] [int] NULL,
	[geo_code] [int] NULL,
	[vendor_code] [int] NULL,
	[sales_usd] [varchar](50) NULL,
	[sales_currency] [varchar](50) NULL,
	CONSTRAINT PK_gpu_sales PRIMARY KEY (gpu_code),
	CONSTRAINT FK_gpu_sales_gpu_code FOREIGN KEY (gpu_code) REFERENCES GROUP26.gpu_product(gpu_code),
	CONSTRAINT FK_gpu_sales_vendor_code FOREIGN KEY (vendor_code) REFERENCES GROUP26.vendor(vendor_code),
	CONSTRAINT FK_gpu_sales_time_code FOREIGN KEY (time_code) REFERENCES GROUP26.TIME(time_id),
	CONSTRAINT FK_gpu_sales_geo_code FOREIGN KEY (geo_code) REFERENCES GROUP26.geography(geo_code)
);
GO

/****** Create Object:  Table [group26].[cpu_sales]  ******/
CREATE TABLE [group26].[cpu_sales](
	[cpu_code] [int] NOT NULL,
	[time_code] [int] NULL,
	[geo_code] [int] NULL,
	[vendor_code] [int] NULL,
	[sales_usd] [varchar](50) NULL,
	[sales_currency] [varchar](50) NULL,
	CONSTRAINT PK_cpu_sales PRIMARY KEY (cpu_code),
	CONSTRAINT FK_cpu_sales_cpu_code FOREIGN KEY (cpu_code) REFERENCES GROUP26.cpu_product(cpu_code),
	CONSTRAINT FK_cpu_sales_vendor_code FOREIGN KEY (vendor_code) REFERENCES GROUP26.vendor(vendor_code),
	CONSTRAINT FK_cpu_sales_time_code FOREIGN KEY (time_code) REFERENCES GROUP26.TIME(time_id),
	CONSTRAINT FK_cpu_sales_geo_code FOREIGN KEY (geo_code) REFERENCES GROUP26.geography(geo_code)
);
GO

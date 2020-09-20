USE [Jericho]
GO

/****** Object:  Table [dbo].[Weapons]    Script Date: 9/20/2020 5:26:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Weapons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WeaponName] [varchar](50) NULL,
	[SerialNumber] [varchar](50) NULL,
	[WeaponType] [varchar](50) NULL,
	[Calibre] [varchar](50) NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO



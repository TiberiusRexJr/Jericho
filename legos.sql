USE [Jericho]
GO

/****** Object:  Table [dbo].[Legos]    Script Date: 9/20/2020 5:24:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Legos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Division] [varchar](50) NULL,
	[Age] [int] NULL,
	[DOB] [date] NULL,
	[Role] [varchar](50) NULL,
	[SecondaryRole] [varchar](50) NULL,
	[Rank] [varchar](50) NULL,
	[CarrierAssign] [varchar](50) NULL,
	[WeaponOfChoice] [varchar](50) NULL,
 CONSTRAINT [PK_Legos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



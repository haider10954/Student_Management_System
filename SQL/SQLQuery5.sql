USE [StudentManagementSystem]
GO

/****** Object:  Table [dbo].[VIEW_ADMIN]    Script Date: 26/06/2021 11:09:02 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VIEW_ADMIN](
	[CONTACT] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL
) ON [PRIMARY]
GO



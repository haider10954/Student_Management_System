USE [StudentManagementSystem]
GO

/****** Object:  Table [dbo].[Feedback]    Script Date: 26/06/2021 11:06:18 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[STUDENt_NAME] [varchar](100) NULL,
	[Message] [varchar](500) NULL
) ON [PRIMARY]
GO



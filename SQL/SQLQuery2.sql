USE [StudentManagementSystem]
GO

/****** Object:  Table [dbo].[Tutor]    Script Date: 26/06/2021 11:05:41 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tutor](
	[T_name] [nvarchar](150) NULL,
	[T_email] [nvarchar](150) NULL,
	[Tphone] [int] NULL,
	[T_course] [nvarchar](150) NULL,
	[T_qualification] [nvarchar](150) NULL,
	[join_date] [date] NULL
) ON [PRIMARY]
GO



USE [StudentManagementSystem]
GO

/****** Object:  Table [dbo].[CourseTable]    Script Date: 26/06/2021 11:03:08 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CourseTable](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[C_name] [nvarchar](150) NULL,
	[Duration] [nvarchar](150) NULL,
	[C_fees] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



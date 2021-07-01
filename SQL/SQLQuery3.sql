USE [StudentManagementSystem]
GO

/****** Object:  Table [dbo].[student]    Script Date: 26/06/2021 11:04:41 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[student](
	[ST_ID] [int] IDENTITY(1,1) NOT NULL,
	[ST_fname] [nvarchar](150) NULL,
	[ST_Lname] [nvarchar](150) NULL,
	[ST_fathername] [nvarchar](150) NULL,
	[ST_fatherphone] [int] NULL,
	[ST_email] [nvarchar](150) NULL,
	[ST_phone] [int] NULL,
	[Course_join] [nvarchar](150) NULL,
	[Course_fees] [int] NULL,
	[First_installment] [int] NULL,
	[Fees_Due] [int] NULL,
	[Join_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



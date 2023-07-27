USE [HireRocks_Dev]
GO
/****** Object:  Table [dbo].[ExperienceLevels]    Script Date: 02/01/2016 15:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperienceLevels](
	[ExperianceLevelId] [bigint] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ExperienceLowerRange] [smallint] NOT NULL,
	[ExperienceHigherRange] [smallint] NOT NULL,
 CONSTRAINT [PK_ExperienceLevels] PRIMARY KEY CLUSTERED 
(
	[ExperianceLevelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

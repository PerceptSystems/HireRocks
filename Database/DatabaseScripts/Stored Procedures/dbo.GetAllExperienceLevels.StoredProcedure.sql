USE [HireRocks_Dev]
GO
/****** Object:  StoredProcedure [dbo].[GetAllExperienceLevels]    Script Date: 02/01/2016 15:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllExperienceLevels]	
AS
BEGIN
	select * from ExperienceLevels where IsActive='true'
END
GO

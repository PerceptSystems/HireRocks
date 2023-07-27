USE [HireRocks_Dev]
GO
/****** Object:  StoredProcedure [dbo].[GetCompleteProfileScreenData]    Script Date: 02/01/2016 15:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCompleteProfileScreenData]
@RoleId nvarchar(100)	
AS
BEGIN
	declare @GetCompleteProfileScreenData table(LanguageId bigint)
	insert into @GetCompleteProfileScreenData(LanguageId) exec GetAllLanguages
END
GO

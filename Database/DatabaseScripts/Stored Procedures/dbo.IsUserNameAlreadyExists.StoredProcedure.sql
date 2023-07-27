USE [HireRocks_Dev]
GO
/****** Object:  StoredProcedure [dbo].[IsUserNameAlreadyExists]    Script Date: 02/01/2016 15:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IsUserNameAlreadyExists]
	@UserName nvarchar(50)
AS
BEGIN
	select COUNT(*) from AspNetUsers where UserName=@UserName
END
GO

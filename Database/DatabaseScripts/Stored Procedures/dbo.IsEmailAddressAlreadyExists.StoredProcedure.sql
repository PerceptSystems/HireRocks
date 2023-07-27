USE [HireRocks_Dev]
GO
/****** Object:  StoredProcedure [dbo].[IsEmailAddressAlreadyExists]    Script Date: 02/01/2016 15:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IsEmailAddressAlreadyExists]
	@Email nvarchar(50)
AS
BEGIN
	select COUNT(*) from AspNetUsers where Email=@Email
END
GO

USE [HireRocks_Dev]
GO
/****** Object:  StoredProcedure [dbo].[GetContractDenyReasonsByRoleId]    Script Date: 02/01/2016 15:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetContractDenyReasonsByRoleId]
@RoleId nvarchar(128)
AS
BEGIN
	Select * from ContractDenyReasons where IsActive='true' and RoleId=@RoleId
END
GO

USE [HireRocks_Dev]
GO
/****** Object:  StoredProcedure [dbo].[GetAllPaymentMethods]    Script Date: 02/01/2016 15:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllPaymentMethods]	
AS
BEGIN
	select * from PaymentMethods where IsActive='true'
END
GO

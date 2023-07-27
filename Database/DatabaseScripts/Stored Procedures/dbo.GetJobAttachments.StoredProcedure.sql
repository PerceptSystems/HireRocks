USE [HireRocks_Dev]
GO
/****** Object:  StoredProcedure [dbo].[GetJobAttachments]    Script Date: 02/01/2016 15:16:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetJobAttachments]	
@JobIds nvarchar(max)
AS
BEGIN
	select * from JobAttachments where JobId in (select * from dbo.FunctionSplitString(@JobIds,','))
END
GO

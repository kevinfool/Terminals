USE [Terminals]
GO
/****** Object:  StoredProcedure [dbo].[UpdateMasterPasswordKey]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateMasterPasswordKey]
	(
	@NewKey nvarchar(max)
	)
AS
update Options
set Value = @NewKey
where PropertyName = 'MasterPasswordKey'
GO

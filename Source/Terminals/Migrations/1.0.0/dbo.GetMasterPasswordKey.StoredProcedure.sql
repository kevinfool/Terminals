USE [Terminals]
GO
/****** Object:  StoredProcedure [dbo].[GetMasterPasswordKey]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMasterPasswordKey]

AS
SELECT  Value
FROM    Options
WHERE   (PropertyName = 'MasterPasswordKey')
GO

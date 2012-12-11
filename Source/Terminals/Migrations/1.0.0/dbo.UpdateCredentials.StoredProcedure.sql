USE [Terminals]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCredentials]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCredentials]
	(
	  @Id int,
    @Name nvarchar(255),
    @UserName nvarchar(255),
    @Domain nvarchar(255),
    @EncryptedPassword nvarchar(max)
	)
AS
	update CredentialBase 
  set
  UserName = @UserName, Domain = @Domain, EncryptedPassword = @EncryptedPassword
  where Id = @Id

	update Credentials 
  set
  Name = @Name
  where Id = @Id
GO

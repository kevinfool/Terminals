USE [Terminals]
GO
/****** Object:  StoredProcedure [dbo].[GetFavoriteGroups]    Script Date: 12/10/2012 22:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetFavoriteGroups]
	(
	@favoriteId int
	)
AS
SELECT DISTINCT GroupId
FROM         FavoritesInGroup
WHERE     (FavoriteId = @favoriteId)
GO

IF OBJECT_ID('[dbo].[GetBlogUserID]') IS NOT NULL
	DROP PROCEDURE [dbo].[GetBlogUserID];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[GetBlogUserID]
	@Email NVARCHAR(512)
AS
	SELECT UserID
	FROM CommunityServer.dbo.cs_Users
	WHERE Email = @Email
GO
GRANT EXECUTE ON  [dbo].[GetBlogUserID] TO [ssc_webapplication]
GO

IF OBJECT_ID('[dbo].[GetExternalBlogs]') IS NOT NULL
	DROP PROCEDURE [dbo].[GetExternalBlogs];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetExternalBlogs]
AS
	SELECT	URL,
			BlogID,
			AuthorID
	FROM	dbo.ExternalBlogs
	WHERE	IsLive = 1

GO
GRANT EXECUTE ON  [dbo].[GetExternalBlogs] TO [ssc_rssimporter]
GO

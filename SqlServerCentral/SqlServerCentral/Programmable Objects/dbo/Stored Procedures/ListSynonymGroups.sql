IF OBJECT_ID('[dbo].[ListSynonymGroups]') IS NOT NULL
	DROP PROCEDURE [dbo].[ListSynonymGroups];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ListSynonymGroups]
AS 
    SELECT   Word , [Group]
    FROM     dbo.SearchAnalyzerConfig
    WHERE    [Group] != 0
    ORDER BY [Group]

GO
GRANT EXECUTE ON  [dbo].[ListSynonymGroups] TO [ssc_searchindexer]
GO
GRANT EXECUTE ON  [dbo].[ListSynonymGroups] TO [ssc_webapplication]
GO

IF OBJECT_ID('[dbo].[ListStopWords]') IS NOT NULL
	DROP PROCEDURE [dbo].[ListStopWords];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ListStopWords]
AS
    BEGIN
        SELECT  Word
        FROM    dbo.SearchAnalyzerConfig
        WHERE   [Group] = 0
    END
GO
GRANT EXECUTE ON  [dbo].[ListStopWords] TO [ssc_searchindexer]
GO
GRANT EXECUTE ON  [dbo].[ListStopWords] TO [ssc_webapplication]
GO

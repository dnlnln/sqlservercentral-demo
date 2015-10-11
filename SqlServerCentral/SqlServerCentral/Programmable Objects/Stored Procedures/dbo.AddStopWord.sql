IF OBJECT_ID('[dbo].[AddStopWord]') IS NOT NULL
	DROP PROCEDURE [dbo].[AddStopWord];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[AddStopWord] @Word NVARCHAR(60) -- Bobs change!
AS
	BEGIN
		INSERT INTO dbo.SearchAnalyzerConfig
		        ( Word, [Group] )
		VALUES  ( @Word, 2 )
		
		
		SELECT @@ERROR AS 'atatError'
	END
GO
GRANT EXECUTE ON  [dbo].[AddStopWord] TO [ssc_webapplication]
GO

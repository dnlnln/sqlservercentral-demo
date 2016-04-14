IF OBJECT_ID('[dbo].[AddStopWord]') IS NOT NULL
	DROP PROCEDURE [dbo].[AddStopWord];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[AddStopWord] @Word NVARCHAR(50)
AS
	BEGIN
		INSERT INTO dbo.SearchAnalyzerConfig
		        ( Word, [Group] )
		VALUES  ( @Word, 0 )
		
		
		SELECT @@ERROR AS 'tatError'
	END
GO
GRANT EXECUTE ON  [dbo].[AddStopWord] TO [ssc_webapplication]
GO

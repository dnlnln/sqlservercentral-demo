-- <Migration ID="e9720f33-ad07-4c05-b910-6c583fec57d3" />
GO


GO
PRINT N'Altering [dbo].[AddStopWord]...';


GO
ALTER PROCEDURE [dbo].[AddStopWord] @Word NVARCHAR(60)
AS
	BEGIN
		INSERT INTO dbo.SearchAnalyzerConfig
		        ( Word, [Group] )
		VALUES  ( @Word, 0 )
		
		
		SELECT @@ERROR AS 'atatError'
	END
GO


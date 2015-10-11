-- <Migration ID="991207e6-747b-4a4b-87f7-fc0416dd0ab0" />
GO


PRINT N'Altering [dbo].[AddStopWord]...';


GO
ALTER PROCEDURE dbo.AddStopWord @Word NVARCHAR(50)
AS
	BEGIN
		INSERT INTO dbo.SearchAnalyzerConfig
		        ( Word, [Group] )
		VALUES  ( @Word, 1 )
		
		
		SELECT @@ERROR AS 'atatError'
	END
GO

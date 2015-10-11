CREATE TABLE [dbo].[SearchAnalyzerConfig]
(
[Word] [nvarchar] (50) NOT NULL,
[Group] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[SearchAnalyzerConfig] ADD CONSTRAINT [PK_SearchAnalyzerConfig] PRIMARY KEY CLUSTERED  ([Word])
GO

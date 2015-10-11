CREATE TABLE [dbo].[StaticTextFragments]
(
[StaticTextFragmentID] [int] NOT NULL IDENTITY(1, 1),
[KeyText] [varchar] (50) NOT NULL,
[StaticText] [varchar] (8000) NULL,
[ContainsTokens] [bit] NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_StaticTextFragments_CreatedDate] DEFAULT (sysdatetime()),
[PublishDate] [datetime2] NOT NULL,
[UpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_StaticTextFragments_UpdatedDate] DEFAULT (sysdatetime())
)
GO
ALTER TABLE [dbo].[StaticTextFragments] ADD CONSTRAINT [PK_StaticTextFragments] PRIMARY KEY CLUSTERED  ([StaticTextFragmentID])
GO
GRANT SELECT ON  [dbo].[StaticTextFragments] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[StaticTextFragments] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[StaticTextFragments] TO [ssc_webapplication]
GO

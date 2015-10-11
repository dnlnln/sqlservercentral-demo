CREATE TABLE [dbo].[SyndicatedCommentCaches]
(
[Id] [int] NOT NULL,
[Count] [int] NOT NULL,
[LastUpdateUtc] [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[SyndicatedCommentCaches] ADD CONSTRAINT [PK__Syndicat__3214EC0711158940] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[SyndicatedCommentCaches] ADD CONSTRAINT [FKBFEEE8BA111C3611] FOREIGN KEY ([Id]) REFERENCES [dbo].[SyndicatedBlogPosts] ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[SyndicatedCommentCaches] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[SyndicatedCommentCaches] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[SyndicatedCommentCaches] TO [ssc_webapplication]
GO

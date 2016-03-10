CREATE TABLE [dbo].[SyndicatedComments]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[SyndicatedId] [nvarchar] (255) NOT NULL,
[PublicationDateTime] [datetime] NOT NULL,
[Author] [nvarchar] (255) NULL,
[Body] [nvarchar] (max) NOT NULL,
[SyndicatedCommentCacheId] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[SyndicatedComments] ADD CONSTRAINT [PK__Syndicat__3214EC0715DA3E5D] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[SyndicatedComments] ADD CONSTRAINT [FK74AB2C6E759E7848] FOREIGN KEY ([SyndicatedCommentCacheId]) REFERENCES [dbo].[SyndicatedCommentCaches] ([Id])
GO
GRANT SELECT ON  [dbo].[SyndicatedComments] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[SyndicatedComments] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[SyndicatedComments] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[SyndicatedComments] TO [ssc_webapplication]
GO

CREATE TABLE [dbo].[BlogPosts]
(
[ContentItemID] [int] NOT NULL,
[BlogId] [int] NOT NULL,
[Slug] [nvarchar] (255) NOT NULL,
[PublicationDateTime] [datetime] NOT NULL,
[PublicationDate] AS (CONVERT([date],[PublicationDateTime],(0))) PERSISTED
)
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [PK__BlogPost__B851BC8C6EC0713C] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
CREATE NONCLUSTERED INDEX [IX_BlogID] ON [dbo].[BlogPosts] ([BlogId]) INCLUDE ([ContentItemID], [PublicationDate], [PublicationDateTime], [Slug])
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [UQ__BlogPost__94E0E1BB719CDDE7] UNIQUE NONCLUSTERED  ([BlogId], [PublicationDate], [Slug])
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [FK_BlogPosts_ContentItems] FOREIGN KEY ([ContentItemID]) REFERENCES [dbo].[ContentItems] ([ContentItemID])
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [FK41C04781582AE673] FOREIGN KEY ([BlogId]) REFERENCES [dbo].[Blogs] ([Id])
GO
GRANT SELECT ON  [dbo].[BlogPosts] TO [ssc_rssimporter]
GO
GRANT INSERT ON  [dbo].[BlogPosts] TO [ssc_rssimporter]
GO
GRANT UPDATE ON  [dbo].[BlogPosts] TO [ssc_rssimporter]
GO
GRANT SELECT ON  [dbo].[BlogPosts] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[BlogPosts] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[BlogPosts] TO [ssc_webapplication]
GO

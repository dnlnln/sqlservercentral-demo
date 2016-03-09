CREATE TABLE [dbo].[SyndicatedBlogs]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[BlogId] [int] NOT NULL,
[FeedUrl] [nvarchar] (255) NOT NULL,
[Enabled] [bit] NOT NULL,
[AuthorEmailAddress] [nvarchar] (255) NOT NULL
)
GO
ALTER TABLE [dbo].[SyndicatedBlogs] ADD CONSTRAINT [PK__Syndicat__3214EC0704AFB25B] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[SyndicatedBlogs] ADD CONSTRAINT [FK9758454B582AE673] FOREIGN KEY ([BlogId]) REFERENCES [dbo].[Blogs] ([Id])
GO
GRANT SELECT ON  [dbo].[SyndicatedBlogs] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[SyndicatedBlogs] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[SyndicatedBlogs] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[SyndicatedBlogs] TO [ssc_webapplication]
GO

CREATE TABLE [dbo].[ForumTopics]
(
[ContentItemID] [int] NOT NULL,
[ForumTopicId] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[ForumTopics] ADD CONSTRAINT [PK__ForumTop__B851BC8C540C7B00] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
ALTER TABLE [dbo].[ForumTopics] ADD CONSTRAINT [UQ__ForumTop__1362261F56E8E7AB] UNIQUE NONCLUSTERED  ([ForumTopicId])
GO
ALTER TABLE [dbo].[ForumTopics] ADD CONSTRAINT [FK2D3B102CA18B6AD] FOREIGN KEY ([ContentItemID]) REFERENCES [dbo].[ContentItems] ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[ForumTopics] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[ForumTopics] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[ForumTopics] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[ForumTopics] TO [ssc_webapplication]
GO

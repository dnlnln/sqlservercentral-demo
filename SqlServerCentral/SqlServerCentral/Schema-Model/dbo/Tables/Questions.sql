CREATE TABLE [dbo].[Questions]
(
[ContentItemID] [int] NOT NULL,
[PointsValue] [int] NOT NULL,
[Explanation] [text] NOT NULL
)
GO
ALTER TABLE [dbo].[Questions] ADD CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
ALTER TABLE [dbo].[Questions] ADD CONSTRAINT [FK_Questions_ContentItems] FOREIGN KEY ([ContentItemID]) REFERENCES [dbo].[ContentItems] ([ContentItemID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[Questions] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[Questions] TO [ssc_webapplication]
GO
GRANT DELETE ON  [dbo].[Questions] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[Questions] TO [ssc_webapplication]
GO

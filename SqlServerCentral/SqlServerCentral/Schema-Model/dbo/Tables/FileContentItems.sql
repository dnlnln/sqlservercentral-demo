CREATE TABLE [dbo].[FileContentItems]
(
[FileID] [int] NOT NULL,
[ContentItemID] [int] NOT NULL
)
GO
CREATE CLUSTERED INDEX [FileID] ON [dbo].[FileContentItems] ([FileID])
GO
GRANT SELECT ON  [dbo].[FileContentItems] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[FileContentItems] TO [ssc_webapplication]
GO
GRANT DELETE ON  [dbo].[FileContentItems] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[FileContentItems] TO [ssc_webapplication]
GO

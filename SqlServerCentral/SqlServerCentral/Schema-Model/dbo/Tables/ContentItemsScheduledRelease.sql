CREATE TABLE [dbo].[ContentItemsScheduledRelease]
(
[contentItemID] [int] NULL,
[ReleaseDate] [datetime] NULL,
[released] [tinyint] NULL
)
GO
CREATE CLUSTERED INDEX [ContentItemID] ON [dbo].[ContentItemsScheduledRelease] ([contentItemID])
GO

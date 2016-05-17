CREATE TABLE [dbo].[ForumOrder]
(
[ForumID] [int] NOT NULL,
[RowIndex] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[ForumOrder] ADD CONSTRAINT [PK_ForumOrder] PRIMARY KEY CLUSTERED  ([ForumID])
GO

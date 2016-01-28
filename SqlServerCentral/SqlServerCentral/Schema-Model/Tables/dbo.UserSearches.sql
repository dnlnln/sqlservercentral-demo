CREATE TABLE [dbo].[UserSearches]
(
[UserID] [int] NULL,
[Search] [nvarchar] (1000) NOT NULL,
[SearchDate] [datetime] NOT NULL CONSTRAINT [DF_UserSearches_SearchDate] DEFAULT (getdate())
)
GO
CREATE CLUSTERED INDEX [UserID_ClusteredIndex] ON [dbo].[UserSearches] ([UserID])
GO

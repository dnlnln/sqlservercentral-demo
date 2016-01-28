CREATE TABLE [dbo].[UserPoints]
(
[UserPointsRecordID] [int] NOT NULL IDENTITY(1, 1),
[UserID] [int] NOT NULL,
[Date] [smalldatetime] NOT NULL,
[PointsScored] [int] NOT NULL,
[PointsCategory] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[UserPoints] ADD CONSTRAINT [PK_UserPoints] PRIMARY KEY CLUSTERED  ([UserPointsRecordID])
GO
CREATE NONCLUSTERED INDEX [ssp_1212] ON [dbo].[UserPoints] ([Date]) INCLUDE ([UserPointsRecordID])
GO
CREATE NONCLUSTERED INDEX [idx_UserPoints_PointsCategoryUserID] ON [dbo].[UserPoints] ([PointsCategory], [UserID]) INCLUDE ([Date], [PointsScored])
GO
CREATE NONCLUSTERED INDEX [ssc_UserID] ON [dbo].[UserPoints] ([UserID], [PointsCategory], [Date]) INCLUDE ([PointsScored])
GO
ALTER TABLE [dbo].[UserPoints] ADD CONSTRAINT [FK_UserPoints_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[UserPoints] TO [ForumsUser]
GRANT INSERT ON  [dbo].[UserPoints] TO [ForumsUser]
GRANT SELECT ON  [dbo].[UserPoints] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[UserPoints] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[UserPoints] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[UserPoints] TO [ssc_webapplication]
GO

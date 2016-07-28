CREATE TABLE [dbo].[AuthorScheduleNotificationsLog]
(
[NotificationID] [int] NOT NULL IDENTITY(1, 1),
[ScheduleEntryID] [int] NOT NULL,
[ContentItemID] [int] NOT NULL,
[ScheduleStartDate] [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[AuthorScheduleNotificationsLog] ADD CONSTRAINT [PK_AuthorScheduleNotificationsLog] PRIMARY KEY CLUSTERED  ([NotificationID])
GO

CREATE TABLE [dbo].[EmailsArchive]
(
[EmailID] [int] NOT NULL,
[RecordType] [char] (10) NOT NULL,
[EmailTypeName] [varchar] (50) NOT NULL,
[IsTest] [bit] NULL,
[UseClickTracking] [bit] NOT NULL,
[SubjectText] [varchar] (500) NOT NULL,
[BodyHTML] [text] NOT NULL,
[BodyPlainText] [text] NOT NULL,
[SenderName] [varchar] (500) NULL,
[SenderEmailAddress] [varchar] (500) NOT NULL,
[Status] [int] NULL,
[ScheduleForDate] [datetime] NULL,
[ApprovedForSending] [bit] NULL
)
GO
ALTER TABLE [dbo].[EmailsArchive] ADD CONSTRAINT [PK_EmailsArchive] PRIMARY KEY CLUSTERED  ([EmailID])
GO

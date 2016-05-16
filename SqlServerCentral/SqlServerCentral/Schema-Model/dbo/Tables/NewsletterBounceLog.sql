CREATE TABLE [dbo].[NewsletterBounceLog]
(
[LogID] [int] NOT NULL IDENTITY(1, 1),
[Date] [datetime] NOT NULL CONSTRAINT [DF_NewsletterBounceLog_Date] DEFAULT (getdate()),
[EmailAddress] [varchar] (255) NOT NULL,
[BounceType] [int] NOT NULL,
[Processed] [bit] NULL CONSTRAINT [DF_NewsletterBounceLog_Processed] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[NewsletterBounceLog] ADD CONSTRAINT [PK_NewsletterBounceLog] PRIMARY KEY CLUSTERED  ([LogID])
GO

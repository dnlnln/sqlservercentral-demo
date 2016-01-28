CREATE TABLE [dbo].[NewsletterBounceForwarding]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[BounceType] [int] NOT NULL,
[ForwardEmailAddress] [varchar] (255) NOT NULL
)
GO
ALTER TABLE [dbo].[NewsletterBounceForwarding] ADD CONSTRAINT [PK_NewsletterBounceForwarding] PRIMARY KEY CLUSTERED  ([ID])
GO
GRANT SELECT ON  [dbo].[NewsletterBounceForwarding] TO [ssc_emailer]
GO

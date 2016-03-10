CREATE TABLE [dbo].[UtilitiesLog]
(
[UtilitiesLogEntryID] [int] NOT NULL IDENTITY(1, 1),
[Date] [datetime] NOT NULL,
[Thread] [varchar] (255) NOT NULL,
[Level] [varchar] (50) NOT NULL,
[Logger] [varchar] (255) NOT NULL,
[Message] [varchar] (4000) NOT NULL,
[Exception] [varchar] (2000) NULL
)
GO
CREATE UNIQUE CLUSTERED INDEX [PK_UtilitiesLog] ON [dbo].[UtilitiesLog] ([UtilitiesLogEntryID])
GO
GRANT SELECT ON  [dbo].[UtilitiesLog] TO [ssc_webapplication]
GO

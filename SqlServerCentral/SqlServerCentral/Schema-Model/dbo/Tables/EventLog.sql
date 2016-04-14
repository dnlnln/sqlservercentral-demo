CREATE TABLE [dbo].[EventLog]
(
[EventID] [int] NOT NULL IDENTITY(1, 1),
[Time] [datetime] NOT NULL CONSTRAINT [DF_ErrorLog_Time] DEFAULT (getdate()),
[Event] [varchar] (50) NOT NULL,
[Description] [nvarchar] (300) NULL,
[ErrorCode] [int] NULL,
[Url] [nvarchar] (600) NULL,
[RequestIP] [varchar] (18) NULL,
[StackTrace] [varchar] (max) NULL,
[StackTraceHash] [int] NULL,
[Headers] [nvarchar] (max) NULL,
[UserID] [int] NULL
)
GO
ALTER TABLE [dbo].[EventLog] ADD CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED  ([EventID])
GO
GRANT SELECT ON  [dbo].[EventLog] TO [ssc_webapplication]
GO

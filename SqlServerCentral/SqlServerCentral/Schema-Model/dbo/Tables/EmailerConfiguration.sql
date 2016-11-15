CREATE TABLE [dbo].[EmailerConfiguration]
(
[ComputerName] [nvarchar] (100) NOT NULL,
[Active] [bit] NOT NULL,
[BatchSize] [int] NOT NULL,
[Priority] [int] NOT NULL,
[LastModifiedDate] [datetime2] NULL,
[DateCreated] [datetime2] NOT NULL CONSTRAINT [DF_EmailerConfiguration_DateCreated] DEFAULT (sysdatetime())
)
GO
ALTER TABLE [dbo].[EmailerConfiguration] ADD CONSTRAINT [PK_EmailerConfiguration] PRIMARY KEY CLUSTERED  ([ComputerName])
GO

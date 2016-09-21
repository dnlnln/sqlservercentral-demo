CREATE TABLE [dbo].[AnalysisLog]
(
[AnalysisLogID] [int] NOT NULL IDENTITY(1, 1),
[Time] [datetime] NOT NULL,
[Data] [varchar] (50) NOT NULL CONSTRAINT [DF_AnalysisImageLog_Data] DEFAULT (''),
[Count] [int] NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_AnalysisLog_CreatedDate] DEFAULT (sysdatetime())
)
GO
ALTER TABLE [dbo].[AnalysisLog] ADD CONSTRAINT [PK__AnalysisImageLog__1CBC4616] PRIMARY KEY CLUSTERED  ([AnalysisLogID])
GO
CREATE NONCLUSTERED INDEX [_dta_index_AnalysisLog_8_562101043__K3_K2] ON [dbo].[AnalysisLog] ([Data], [Time])
GO

-- <Migration ID="ce055797-c67b-4ad1-b54a-5e7720ded388" />
GO

SET DATEFORMAT YMD;


GO
DECLARE @pv AS BINARY (16);


GO
IF (SELECT COUNT(*)
    FROM   [dbo].[EmailerConfiguration]) = 0
    BEGIN
        PRINT (N'Add 4 rows to [dbo].[EmailerConfiguration]');
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority])
        VALUES                                   (N'252314-SQL1', 1, 100, 1);
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority])
        VALUES                                   (N'252315-SQL2', 1, 1000, 2);
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority])
        VALUES                                   (N'252838-VMWEB3', 1, 10, 1);
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority])
        VALUES                                   (N'252839-VMWEB4', 1, 1000, 2);
    END


GO
IF (SELECT COUNT(*)
    FROM   [dbo].[MailboxMonitorConfiguration]) = 0
    BEGIN
        PRINT (N'Add 2 rows to [dbo].[MailboxMonitorConfiguration]');
        INSERT  INTO [dbo].[MailboxMonitorConfiguration] ([ID], [MailboxAddress], [MailBoxPassword], [MailServer], [AccountType])
        VALUES                                          (1, 'subscriptions@sqlservercentral.com', 'subforme', 'pop.emailsrvr.com', 1);
        INSERT  INTO [dbo].[MailboxMonitorConfiguration] ([ID], [MailboxAddress], [MailBoxPassword], [MailServer], [AccountType])
        VALUES                                          (2, 'abuse@sqlservercentral.com', 'B#N!c3', 'pop.emailsrvr.com', 2);
    END


GO
IF (SELECT COUNT(*)
    FROM   [dbo].[SearchAnalyzerConfig]) = 0
    BEGIN
        PRINT (N'Add 6 rows to [dbo].[SearchAnalyzerConfig]');
        INSERT  INTO [dbo].[SearchAnalyzerConfig] ([Word], [Group])
        VALUES                                   (N'back up', 1);
        INSERT  INTO [dbo].[SearchAnalyzerConfig] ([Word], [Group])
        VALUES                                   (N'backup', 1);
        INSERT  INTO [dbo].[SearchAnalyzerConfig] ([Word], [Group])
        VALUES                                   (N'reporting services', 2);
        INSERT  INTO [dbo].[SearchAnalyzerConfig] ([Word], [Group])
        VALUES                                   (N'ssrs', 2);
        INSERT  INTO [dbo].[SearchAnalyzerConfig] ([Word], [Group])
        VALUES                                   (N't sql', 3);
        INSERT  INTO [dbo].[SearchAnalyzerConfig] ([Word], [Group])
        VALUES                                   (N'tsql', 3);
    END


GO

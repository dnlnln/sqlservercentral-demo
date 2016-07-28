CREATE TABLE [dbo].[QuestionAttemptAnswers]
(
[AttemptID] [int] NOT NULL,
[AnswerID] [int] NOT NULL
)
GO
CREATE CLUSTERED INDEX [AttemptID-Clustered] ON [dbo].[QuestionAttemptAnswers] ([AttemptID])
GO
ALTER TABLE [dbo].[QuestionAttemptAnswers] ADD CONSTRAINT [FK_QuestionAttemptAnswer_Answers] FOREIGN KEY ([AnswerID]) REFERENCES [dbo].[Answers] ([AnswerID])
GO
ALTER TABLE [dbo].[QuestionAttemptAnswers] ADD CONSTRAINT [FK_QuestionAttemptAnswer_QuestionAttempt] FOREIGN KEY ([AttemptID]) REFERENCES [dbo].[QuestionAttempt] ([AttemptID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[QuestionAttemptAnswers] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[QuestionAttemptAnswers] TO [ssc_webapplication]
GO
GRANT DELETE ON  [dbo].[QuestionAttemptAnswers] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[QuestionAttemptAnswers] TO [ssc_webapplication]
GO

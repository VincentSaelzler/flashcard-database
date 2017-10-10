CREATE PROCEDURE [Util].[DeleteAllTables]
AS
	DELETE FROM dbo.Question
	DELETE FROM dbo.[Round]
	DELETE FROM dbo.Quiz
	DELETE FROM dbo.Student
	--not sure if I actially need a "GO" statement to first complete the delete transaction
	--before resetting identity. For now just run this twice.
	DBCC CHECKIDENT ('Question', RESEED, 1) 
	DBCC CHECKIDENT ('[Round]', RESEED, 1) 
	DBCC CHECKIDENT ('Quiz', RESEED, 1) 
	DBCC CHECKIDENT ('Student', RESEED, 1) 
RETURN 0

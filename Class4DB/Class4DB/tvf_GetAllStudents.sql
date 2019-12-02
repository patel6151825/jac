CREATE FUNCTION [dbo].[tvf_GetAllStudents]
(
	@age int
)
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM dbo.Student WHERE Age=@age
)

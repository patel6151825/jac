CREATE FUNCTION [dbo].[FunctionCountStudentAsPerAge]
(
	@param1 int
)
RETURNS INT
AS
BEGIN
	DECLARE @totalStudents int;
	SELECT @totalStudents=COUNT(StudentId) FROM Student S WHERE S.Age=@param1
	IF (@totalStudents IS NULL)
		SET @totalStudents=0;
	RETURN @totalStudents
END
GO

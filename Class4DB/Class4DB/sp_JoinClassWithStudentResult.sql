CREATE PROCEDURE [dbo].[sp_JoinClassWithStudentResult]
	@age int = 25
AS
	SELECT 
	C.ClassId,
	C.ClassName,
	C.ClassNumber,
	C.CreateDate AS Class_Create_Date,
	C.UpdateDate AS Class_Update_Date,
	G.StudentId,
	G.FirstName,
	G.LastName,
	G.Age,
	G.CreateDate AS Student_Create_Date,
	G.UpdateDate AS Student_Update_Date
	FROM dbo.Class C
	INNER JOIN dbo.Student_Class SC
		ON C.ClassId=SC.ClassId
	INNER JOIN dbo.tvf_GetAllStudents(@age) AS G
		ON SC.StudentId=G.StudentId
RETURN 0
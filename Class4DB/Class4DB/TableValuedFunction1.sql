CREATE FUNCTION [dbo].[TableValuedFunction1]
(
	@StudentId int
)
RETURNS TABLE
AS
RETURN
(
	--SELECT S.StudentId, S.FirstName, S.LastName, S.Age FROM Student S JOIN dbo.Student_Class AS SC ON S.StudentId=SC.StudentId WHERE SC.StudentId=@StudentId
	SELECT SC.StudentId,SC.ClassId,SC.CreateDate,SC.UpdateDate FROM Student_Class SC WHERE SC.StudentId=@StudentId
);

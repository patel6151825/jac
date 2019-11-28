CREATE VIEW [dbo].[VW_GetAllStudentsAndClasses]
	AS SELECT * FROM dbo.Student UNION ALL SELECT * FROM dbo.Class 


/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE Class4DB

IF((Select count(1) From dbo.Student)=0)
BEGIN 
	INSERT INTO dbo.Student VALUES ('Firstname1','LastName1',23,GETDATE(),null)
	INSERT INTO dbo.Student VALUES ('Firstname2','LastName2',24,GETDATE(),null)
	INSERT INTO dbo.Student VALUES ('Firstname3','LastName3',25,GETDATE(),null)
	INSERT INTO dbo.Student VALUES ('Firstname4','LastName4',26,GETDATE(),null)
END

IF NOT EXISTS(SELECT 1 FROM Class)
BEGIN
	INSERT INTO dbo.Class VALUES ('Class1',201,GETDATE(),null)
	INSERT INTO dbo.Class VALUES ('Class2',202,GETDATE(),null)
	INSERT INTO dbo.Class VALUES ('Class3',203,GETDATE(),null)
	INSERT INTO dbo.Class VALUES ('Class4',204,GETDATE(),null)

	INSERT INTO dbo.Student_Class VALUES (1,1,GETDATE(),null)
	INSERT INTO dbo.Student_Class VALUES (1,2,GETDATE(),null)
	INSERT INTO dbo.Student_Class VALUES (1,3,GETDATE(),null)
	INSERT INTO dbo.Student_Class VALUES (2,1,GETDATE(),null)
	INSERT INTO dbo.Student_Class VALUES (2,2,GETDATE(),null)
	INSERT INTO dbo.Student_Class VALUES (2,3,GETDATE(),null)
	INSERT INTO dbo.Student_Class VALUES (3,2,GETDATE(),null)
	INSERT INTO dbo.Student_Class VALUES (3,3,GETDATE(),null)

END
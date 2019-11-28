CREATE TABLE [dbo].[Student_Class]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StudentId] TINYINT NOT NULL, 
    [ClassId] TINYINT NOT NULL, 
    [CreateDate] DATETIME NOT NULL, 
    [UpdateDate] DATETIME NULL, 
    CONSTRAINT [FK_Student_Class_Student] FOREIGN KEY ([StudentId]) REFERENCES [Student]([StudentId]), 
    CONSTRAINT [FK_Student_Class_Class] FOREIGN KEY ([ClassId]) REFERENCES [Class]([ClassId])
)

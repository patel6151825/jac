CREATE TABLE [dbo].[Student]
(
	[StudentId] TINYINT NOT NULL PRIMARY KEY NONCLUSTERED IDENTITY, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [Email] VARCHAR(30) NULL, 
    [Contact] NUMERIC(10) NOT NULL, 
    [ClassId] INT NOT NULL, 
    CONSTRAINT [FK_Student_ToTable] FOREIGN KEY ([Column]) REFERENCES [ToTable]([ToTableColumn])
)

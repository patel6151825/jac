﻿CREATE TABLE [dbo].[Student]
(
	[StudentId] TINYINT NOT NULL PRIMARY KEY NONCLUSTERED IDENTITY, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [Email] VARCHAR(30) NULL, 
    [Age] INT NOT NULL
)


USE master
GO

IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'Something'
)
CREATE DATABASE Something
GO

SELECT name, crdate FROM master.dbo.sysdatabases WHERE name LIKE '%Something%';


IF OBJECT_ID('Wicked', 'U') IS NOT NULL
DROP TABLE Wicked
GO

CREATE TABLE Wicked
(
    Id INT NOT NULL PRIMARY KEY,
);
GO



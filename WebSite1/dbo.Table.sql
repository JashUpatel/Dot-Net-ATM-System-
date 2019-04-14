CREATE TABLE [dbo].[Table]
(
	[card] NUMERIC NOT NULL PRIMARY KEY, 
    [name] NVARCHAR(50) NOT NULL, 
    [account] BIGINT NOT NULL, 
    [pin] INT NOT NULL, 
    [balance] INT NOT NULL
)

CREATE DATABASE IPL_Warehouse;
GO

USE IPL_Warehouse;
GO
CREATE TABLE DimDate
(
    DateKey INT PRIMARY KEY,
    [Date] DATE,
    [Day] INT,
    [Month] INT,
    MonthName VARCHAR(20),
    Quarter INT,
    [Year] INT,
    [Week] INT
);

DECLARE @StartDate DATE = '2008-01-01';
DECLARE @EndDate DATE = '2024-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO DimDate
    (
        DateKey,
        [Date],
        [Day],
        [Month],
        MonthName,
        Quarter,
        [Year],
        [Week]
    )
    VALUES
    (
        CONVERT(INT, FORMAT(@StartDate,'yyyyMMdd')),
        @StartDate,
        DAY(@StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH,@StartDate),
        DATEPART(QUARTER,@StartDate),
        YEAR(@StartDate),
        DATEPART(WEEK,@StartDate)
    );

    SET @StartDate = DATEADD(DAY,1,@StartDate);
END;

SELECT
    COUNT(*) AS TotalRows,
    MIN([Date]) AS MinDate,
    MAX([Date]) AS MaxDate
FROM DimDate;

SELECT name
FROM sys.sql_logins;
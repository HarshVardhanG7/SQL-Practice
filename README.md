# IPL Data Warehouse - SQL Assignment

## Overview

This project contains a SQL Server script for creating and populating a simple data warehouse database named **IPL_Warehouse**.

The script demonstrates:

- Database creation
- Dimension table creation
- Date dimension population
- Data warehousing concepts
- Basic SQL Server system catalog queries

This project can be used as a beginner-level example of building a **Date Dimension (DimDate)** commonly used in Data Warehousing, ETL, SSIS, Azure Data Factory, and Microsoft Fabric projects.

---

## Technologies Used

- Microsoft SQL Server
- T-SQL (Transact-SQL)

---

## Database Structure

### Database

```sql
IPL_Warehouse
```

### Dimension Table

```sql
DimDate
```

Columns:

| Column Name | Data Type | Description |
|------------|-----------|-------------|
| DateKey | INT | Surrogate date key in YYYYMMDD format |
| Date | DATE | Actual calendar date |
| Day | INT | Day of month |
| Month | INT | Month number |
| MonthName | VARCHAR(20) | Month name |
| Quarter | INT | Quarter of year |
| Year | INT | Calendar year |
| Week | INT | Week number |

---

## Functionality

### 1. Create Database

The script creates a database named:

```sql
IPL_Warehouse
```

and switches the context to that database.

---

### 2. Create DimDate Table

A Date Dimension table is created to store calendar-related attributes.

Example:

| DateKey | Date | MonthName | Quarter |
|----------|------------|------------|------------|
| 20080101 | 2008-01-01 | January | 1 |
| 20080102 | 2008-01-02 | January | 1 |

---

### 3. Populate Date Dimension

The script automatically generates dates from:

```text
2008-01-01
to
2024-12-31
```

For each date, the following information is populated:

- Day
- Month
- Month Name
- Quarter
- Year
- Week Number

---

### 4. Validation Query

The script validates the generated data by returning:

- Total number of rows
- Minimum date
- Maximum date

Example:

```sql
SELECT
    COUNT(*) AS TotalRows,
    MIN([Date]) AS*MinDate,
    MAX([Date]) AS MaxDat*
FROM DimDate;
```

---

### 5. SQ* Server Login Information

The scr*pt also retrieves SQL Server login*accounts using:

```sql
SELECT nam*
FROM sys.sql_logins;
```

This is*useful for understanding available*SQL authentication logins.

---

#* Learning Objectives

This project*demonstrates:

- Database creation*- Table design
- Primary keys
- Da*e dimensions
- WHILE loops in T-SQ*
- Date functions
- Data warehouse*fundamentals
- System catalog view*

---

## How to Run

1. Open SQL *erver Management Studio (SSMS).
2.*Create a new query window.
3. Copy*the contents of `IPL_Assignment.sq*`.
4. Execute the script.
5. Verif* results using the validation quer*es.

---

## Expected Outcome

Aft*r execution:

- Database `IPL_Ware*ouse` will be created.
- `DimDate`*table will contain all dates from *008 through 2024.
- Date-related a*tributes will be available for ana*ytical reporting.

---

## Future *mprovements

Possible enhancements*

- Add Fact Tables (Matches, Team*, Players)
- Add IPL-specific dime*sions
- Implement Surrogate Keys
-*Create ETL workflows using SSIS or*Azure Data Factory
- Add stored pr*cedures for incremental loads

---*
## Author

Harsh Vardhan Goboori
*Practice project for learning SQL *erver and Data Warehousing concept*.
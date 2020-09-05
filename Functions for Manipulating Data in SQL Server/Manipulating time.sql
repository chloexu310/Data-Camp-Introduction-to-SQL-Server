
-- -- Manipulating time
-- Date
-- and time functions are an important topic for databases. In this chapter, you will get familiar
-- with the most common functions for date and time manipulation. You will learn how to retrieve the current date, only parts from a date, to assemble a date from pieces and to check
-- if an expression is a valid date or not.


-- Get the know the system date and time functions
-- The purpose of this exercise is for you to work with the system date and time functions and see how you can use them in SQL Server. Whether you just want to discover what day it is or you are performing complex time analysis, these functions will prove to be very helpful in many situations.

-- In this exercise, you will familiarize yourself with the most commonly used system date and time functions. These are:

-- Higher Precision

-- SYSDATETIME()
-- SYSUTCDATETIME()
-- SYSDATETIMEOFFSET()
-- Lower Precision

-- GETDATE()
-- GETUTCDATE()
-- CURRENT_TIMESTAMP
SELECT
    SYSDATETIME() AS CurrentDate;

--     Selecting parts
-- of the system's date and time
-- In this exercise, you will retrieve only parts of the system's date and time, focusing on only the date or only the time. You will
-- use the
-- same date and time functions, but you will
-- use CAST
-- () and CONVERT
-- () to transform the results to a different data type.

SELECT
    CONVERT(VARCHAR(24), SYSDATETIME(), 107) AS HighPrecision,
    CONVERT(VARCHAR(24), SYSDATETIME(), 102) AS LowPrecision;

--     Extracting parts
-- from a date
-- In this exercise, you will practice extracting date parts from a date, using SQL Server built-in functions. These functions are easy to apply and you can also
-- use them
-- in the WHERE clause, to restrict the results returned by the query.

-- You will start by querying the voters table and
-- create new columns by extracting the year, month, and day from the first_vote_date

SELECT
    first_name,
    last_name,
    -- Extract the year of the first vote
    YEAR(first_vote_date)  AS first_vote_year,
    -- Extract the month of the first vote
    MONTH(first_vote_date) AS first_vote_month,
    -- Extract the day of the first vote
    DAY(first_vote_date)   AS first_vote_day
FROM voters;
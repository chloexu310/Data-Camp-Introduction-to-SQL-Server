-- One
-- of the first steps in data analysis is examining data through aggregations. This chapter explores how to
-- create aggregations in SQL Server, a common first step in data exploration. You will also clean missing data and categorize data into bins
-- with CASE statements.

-- Calculating the total
-- In this chapter, you will
-- use the
-- shipments data. The Shipments table has several columns such
-- as:

-- MixDesc:
-- the concrete type
-- Quantity:
-- the amount of concrete shipped
-- In this exercise, your objective is to calculate the total quantity for each type of concrete used.

-- Write a query that returns an aggregation 
___ MixDesc, ___
FROM Shipments
-- Group by the relevant column
___

-- Counting the number of rows
-- In this exercise, you will calculate the number of orders for each concrete type. Since each row represents one order, all you need to is count the number of rows for each type of MixDesc.

-- Count the number of rows by MixDesc
SELECT MixDesc, ___
FROM Shipments
GROUP BY ___

-- Counting the number
-- of days between dates
-- In this exercise, you will calculate the difference between the order date and ship date.

-- Return the difference in OrderDate and ShipDate
SELECT OrderDate, ShipDate,
    ___(___, OrderDate, ShipDate) AS Duration
FROM Shipments

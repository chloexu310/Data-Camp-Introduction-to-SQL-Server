-- Herein, you
-- 'll learn how to use important SQL Server aggregate functions such as SUM, COUNT, MIN, MAX, and AVG. Following that, you'll learn how to manipulate text fields. To round out the chapter, you'll power up your queries using GROUP BY and HAVING, which will enable you to perform more meaningful aggregations.
-- Summing
-- Summing and counting are key ways of aggregating data, regardless of whether you are using a database, manipulating a spreadsheet, or using a programming language such as Python or R. Let's see how to do it in T-SQL using the grid table from Chapter 1.

-- You'll start by obtaining overall sums, focusing specifically on the 'MRO' region.

-- Sum the demand_loss_mw column
SELECT
    SUM(demand_loss_mw) AS MRO_demand_loss
FROM
    grid
WHERE
  -- demand_loss_mw should not contain NULL values
  demand_loss_mw IS NOT NULL
    -- and nerc_region should be 'MRO';
    AND nerc_region = 'MRO';

-- Counting
-- Having explored the 'MRO' region, let's now explore the 'RFC' region in more detail while learning how to use the COUNT aggregate function.

-- Obtain a count of 'grid_id'
SELECT
    COUNT('grid_id') AS grid_total
FROM
    grid;

--     MIN, MAX
-- and AVG
-- Along
-- with summing and counting, you'll frequently need to find the minimum, maximum, and average of column values. Thankfully, T-SQL has functions you can use to make the task easier!


-- Problem: Product Sales Analysis III
-- Source: LeetCode
-- Link: https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-28

-- Brief problem description:

```Write a solution to find all sales that occurred in the first year each product was sold.

For each product_id, identify the earliest year it appears in the Sales table.

Return all sales entries for that product in that year.

Return a table with the following columns: product_id, first_year, quantity, and price.
Return the result in any order.```

-- Write your MySQL query statement below

SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year)
IN
(
    SELECT product_id, MIN(year)
    FROM Sales
    GROUP BY product_id
)

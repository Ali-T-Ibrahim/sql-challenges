-- Problem: Product Sales Analysis I
-- Source: LeetCode
-- Link: https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-23

-- Brief problem description:

```Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order.```

-- Write your MySQL query statement below

SELECT Product.product_name, year, price FROM Sales
LEFT JOIN Product
ON Product.product_id = Sales.product_id
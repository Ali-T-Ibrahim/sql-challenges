-- Problem: Customers Who Bought All Products
-- Source: LeetCode
-- Link: https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-28

-- Brief problem description:

```Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product)
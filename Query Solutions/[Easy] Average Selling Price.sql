-- Problem: Average Selling Price
-- Source: LeetCode
-- Link: https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-27

-- Brief problem description:

```Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.

Return the result table in any order.```

-- Write your MySQL query statement below
SELECT p.product_id, 
      ROUND(IFNULL(SUM(IFNULL(s.units, 0) * price)  / SUM(IFNULL(s.units, 0)), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold s
ON (p.product_id = s.product_id)
    AND (s.purchase_Date BETWEEN p.start_date AND p.end_date)

GROUP BY p.product_id
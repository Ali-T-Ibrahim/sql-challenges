-- Problem: Recyclable and Low Fat Products
-- Source: LeetCode
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-23

-- Brief problem description:

```Write a solution to find the ids of products that are both low fat and recyclable.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT product_id FROM Products
WHERE recyclable = "Y" AND low_fats = "Y"
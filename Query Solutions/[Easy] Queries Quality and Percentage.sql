-- Problem: Queries Quality and Percentage
-- Source: LeetCode
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-27

-- Brief problem description:

```We define query quality as:

The average of the ratio between query rating and its position.

We also define poor query percentage as:

The percentage of all queries with rating less than 3.

Write a solution to find each query_name, the quality and poor_query_percentage.

Both quality and poor_query_percentage should be rounded to 2 decimal places.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT query_name, ROUND(SUM(rating/position)/COUNT(*), 2) AS quality,
        ROUND(AVG(rating < 3)*100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
-- Problem: Triangle Judgement
-- Source: LeetCode
-- Link: https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-28

-- Brief problem description:

```Report for every three line segments whether they can form a triangle.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT x,y,z,
CASE WHEN (x+y > z) AND (ABS(x-y)<z) THEN "Yes"
ELSE "No"
END AS triangle

FROM Triangle

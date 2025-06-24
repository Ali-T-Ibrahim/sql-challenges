-- Problem: Rising Temperature
-- Source: LeetCode
-- Link: https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-24

-- Brief problem description:

```Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT today.id FROM Weather today
LEFT JOIN Weather yesterday
ON DATEDIFF(today.recordDate, yesterday.recordDate) = 1
WHERE today.temperature > yesterday.temperature
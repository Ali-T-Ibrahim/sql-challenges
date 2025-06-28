-- Problem: Consecutive Numbers
-- Source: LeetCode
-- Link: https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-28

-- Brief problem description:

```Find all numbers that appear at least three times consecutively.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT DISTINCT(l1.num) AS ConsecutiveNums
FROM Logs l1
LEFT JOIN logs l2
ON (l2.id = l1.id+1)
LEFT JOIN logs l3
ON (l3.id = l1.id+2)
WHERE l1.num = l2.num AND l2.num = l3.num

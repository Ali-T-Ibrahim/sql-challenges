-- Problem: Biggest Single Number
-- Source: LeetCode
-- Link: https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-28

-- Brief problem description:

```A single number is a number that appeared only once in the MyNumbers table.

Find the largest single number. If there is no single number, report null.```

-- Write your MySQL query statement below

SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) < 2

UNION ALL

SELECT NULL

ORDER BY num DESC
LIMIT 1
-- Problem: Percentage of Users Attended a Contest
-- Source: LeetCode
-- Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-27

-- Brief problem description:

```Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.```

-- Write your MySQL query statement below

SELECT r.contest_id,
   (ROUND(COUNT(user_id) / (SELECT COUNT(*) FROM Users)*100, 2)) AS percentage
FROM Register r
LEFT JOIN Users u
USING (user_id)
GROUP BY (contest_id)

ORDER BY percentage DESC, r.contest_id ASC
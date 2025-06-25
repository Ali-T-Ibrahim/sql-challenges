-- Problem: Employee Bonus
-- Source: LeetCode
-- Link: https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-25

-- Brief problem description:

```Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT name, bonus FROM EMPLOYEE e
LEFT JOIN Bonus b
ON e.empID = b.empID
WHERE bonus < 1000 or bonus IS NULL

-- USING to clean up join

SELECT name, bonus FROM EMPLOYEE e
LEFT JOIN Bonus b
USING (empId)
WHERE bonus < 1000 OR bonus IS NULL
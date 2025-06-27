-- Problem: Project Employees I
-- Source: LeetCode
-- Link: https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-27

-- Brief problem description:

```Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

Return the result table in any order.```

-- Write your MySQL query statement below
SELECT p.project_id, ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
LEFT JOIN Employee e
USING (employee_id)
GROUP BY p.project_id
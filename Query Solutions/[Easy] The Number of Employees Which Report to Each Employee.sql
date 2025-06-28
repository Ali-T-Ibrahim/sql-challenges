-- Problem: The Number of Employees Which Report to Each Employee
-- Source: LeetCode
-- Link: https: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-28

-- Brief problem description:

```For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

Return the result table ordered by employee_id.```

-- Write your MySQL query statement below

WITH Managers
AS(
    SELECT reports_to AS manager_id,
        COUNT(*) AS reports_count,
        ROUND(AVG(age)) AS average_age
    FROM Employees
    WHERE reports_to IS NOT NULL
    GROUP BY reports_to
)

SELECT e.employee_id,
       e.name,
       m.reports_count,
       m.average_age
FROM Managers m
LEFT JOIN Employees e
ON m.manager_id = e.employee_id
ORDER BY e.employee_id
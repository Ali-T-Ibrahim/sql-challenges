-- Problem: Managers with at Least 5 Direct Reports
-- Source: LeetCode
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-25

-- Brief problem description:

```Write a solution to find managers with at least five direct reports.

Return the result table in any order. ```

-- Write your MySQL query statement below

WITH
Reportees AS(
    SELECT b.name, a.managerId, COUNT(a.ManagerId) AS reportee
    FROM Employee a
    JOIN Employee b
    ON a.managerId = b.id
    GROUP BY ManagerId
)

SELECT name FROM Reportees
WHERE reportee >= 5

-- Attempt 2, no CTE
SELECT name
FROM Employee
WHERE id
IN (
    SELECT ManagerId FROM Employee
    GROUP BY ManagerId
    HAVING COUNT(ManagerId) >= 5
)

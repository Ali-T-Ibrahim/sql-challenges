-- Problem: Replace Employee ID With The Unique Identifier
-- Source: LeetCode
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-23

-- Brief problem description:

```Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT Employees.name, EmployeeUNI.unique_id
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id
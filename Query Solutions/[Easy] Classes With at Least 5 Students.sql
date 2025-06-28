-- Problem: Classes With at Least 5 Students
-- Source: LeetCode
-- Link: https://leetcode.com/problems/classes-with-at-least-5-students/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-28

-- Brief problem description:

```Write a solution to find all the classes that have at least five students.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT c1.class
FROM Courses c1
JOIN Courses c2
USING (student, class)
GROUP BY c1.class
HAVING COUNT(c2.class) >= 5
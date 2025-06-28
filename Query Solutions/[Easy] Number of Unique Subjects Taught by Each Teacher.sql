-- Problem: Number of Unique Subjects Taught by Each Teacher
-- Source: LeetCode
-- Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-28

-- Brief problem description:

```Write a solution to calculate the number of unique subjects each teacher teaches in the university.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
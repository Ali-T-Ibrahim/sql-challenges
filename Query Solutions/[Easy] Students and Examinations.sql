-- Problem: Students and Examinations
-- Source: LeetCode
-- Link: https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-25

-- Brief problem description:

```Write a solution to find the number of times each student attended each exam.

Return the result table ordered by student_id and subject_name. ```

-- Write your MySQL query statement below

SELECT student_id, student_name, subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students
JOIN Subjects
LEFT JOIN Examinations e
USING(student_id, subject_name)

GROUP BY student_id, subject_name
ORDER BY student_id, Subject_name
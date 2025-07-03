-- Problem: Count Salary Categories
-- Source: LeetCode
-- Link: https://leetcode.com/problems/count-salary-categories/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-07-03

-- Brief problem description:

```Write a solution to calculate the number of bank accounts for each salary category. The salary categories are:

"Low Salary": All the salaries strictly less than $20000.
"Average Salary": All the salaries in the inclusive range [$20000, $50000].
"High Salary": All the salaries strictly greater than $50000.
The result table must contain all three categories. If there are no accounts in a category, return 0.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT c.category, IFNULL(a.total_count, 0) AS accounts_count
FROM 
(
    SELECT "Low Salary" AS category
    UNION ALL SELECT "Average Salary"
    UNION ALL SELECT "High Salary"
) c
LEFT JOIN
(
    SELECT CASE 
            WHEN income < 20000 THEN "Low Salary"
            WHEN income BETWEEN 20000 AND 50000 THEN "Average Salary"
            ELSE "High Salary"
           END AS category,
        COUNT(*) AS total_count
    FROM Accounts
    GROUP BY (category)
) a
USING(category)
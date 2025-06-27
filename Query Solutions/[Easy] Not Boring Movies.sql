-- Problem: Not Boring Movies
-- Source: LeetCode
-- Link: https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-26

-- Brief problem description:

```Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.```

-- Write your MySQL query statement below

SELECT *
FROM Cinema
WHERE (id % 2 = 1) AND (description != 'boring')
ORDER BY rating DESC
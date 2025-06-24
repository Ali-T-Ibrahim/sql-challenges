-- Problem: Article Views I
-- Source: LeetCode
-- Link: https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-23

-- Brief problem description:

```Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.```

-- Write your MySQL query statement below

SELECT DISTINCT(author_id) AS id FROM Views
WHERE author_id = viewer_id
ORDER BY author_id
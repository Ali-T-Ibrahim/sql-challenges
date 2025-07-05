-- Problem: Movie Rating
-- Source: LeetCode
-- Link: https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-07-05

-- Brief problem description:

``` Write a solution to:

Find the name of the user who has rated the greatest number of movies.
In case of a tie, return the lexicographically smaller user name.

Find the movie name with the highest average rating in February 2020.
In case of a tie, return the lexicographically smaller movie name.```

-- Write your MySQL query statement below

SELECT name AS results
FROM
(
(SELECT u.name, COUNT(*) AS rating_count
FROM MovieRating mr
LEFT JOIN Users u
USING (user_id)
GROUP BY u.name
ORDER BY rating_count DESC, u.name
LIMIT 1)

UNION ALL 

(SELECT m.title, AVG(mr.rating) AS avg_rating
FROM MovieRating mr
LEFT JOIN Movies m
USING (movie_id)
WHERE EXTRACT(YEAR FROM mr.created_At) = 2020
    AND EXTRACT(MONTH FROM mr.created_At) = 02
GROUP BY m.title
ORDER BY avg_rating DESC, m.title
LIMIT 1)
) final
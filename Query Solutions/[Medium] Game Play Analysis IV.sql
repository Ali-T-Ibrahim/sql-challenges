-- Problem: Game Play Analysis IV
-- Source: LeetCode
-- Link: https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-27

-- Brief problem description:

```Write a solution to report the fraction of players that logged in again on the day after the day they 
first logged in, rounded to 2 decimal places. In other words, you need to determine the number of players
who logged in on the day immediately following their initial login, and divide it by the number of total
players.```

-- Write your MySQL query statement below

SELECT ROUND (AVG(n.event_date IS NOT NULL), 2) AS fraction
FROM(
    SELECT
    player_id,
    MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) f
LEFT JOIN Activity n
ON f.player_id = n.player_id
    AND DATEDIFF(n.event_date, f.first_date) = 1
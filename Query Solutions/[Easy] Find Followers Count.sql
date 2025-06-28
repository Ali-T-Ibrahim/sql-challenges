-- Problem: Find Followers Count
-- Source: LeetCode
-- Link: https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-28

-- Brief problem description:

```Write a solution that will, for each user, return the number of followers.

Return the result table ordered by user_id in ascending order.```

-- Write your MySQL query statement below

SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id
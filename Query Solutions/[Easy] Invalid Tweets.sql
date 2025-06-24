-- Problem: Invalid Tweets
-- Source: LeetCode
-- Link: https:https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-23

-- Brief problem description:

```Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Return the result table in any order.```

-- Write your MySQL query statement below
SELECT tweet_id FROM Tweets
WHERE LENGTH(content) > 15
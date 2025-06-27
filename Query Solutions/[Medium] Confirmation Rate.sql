-- Problem: Confirmation Rate
-- Source: LeetCode
-- Link: https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-26

-- Brief problem description:

```The confirmation rate of a user is the number of 'confirmed' messages divided by the total number of requested confirmation messages. The confirmation rate of a user that did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.

Write a solution to find the confirmation rate of each user.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT user_id, 
    IFNULL(ROUND(AVG(action = 'confirmed'), 2), 0) AS confirmation_rate
FROM Signups
LEFT JOIN Confirmations
USING(user_id)
GROUP BY user_id
ORDER BY confirmation_rate
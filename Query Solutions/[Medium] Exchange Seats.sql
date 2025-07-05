-- Problem: Exchange Seats
-- Source: LeetCode
-- Link: https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-07-05

-- Brief problem description:

```Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

Return the result table ordered by id in ascending order.```

-- Write your MySQL query statement below

SELECT
    (CASE
            WHEN id+1 IN (SELECT id FROM Seat) AND id%2=1 THEN id+1
            WHEN id-1 IN (SELECT id FROM Seat) AND id%2=0 THEN id-1
            ELSE id
    END) AS id,
    student
FROM Seat
ORDER BY id
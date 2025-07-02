-- Problem: Last Person to Fit in the Bus
-- Source: LeetCode
-- Link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-07-02

-- Brief problem description:

```There is a queue of people waiting to board a bus. However, the bus has a weight limit of 1000 kilograms, so there may be some people who cannot board.

Write a solution to find the person_name of the last person that can fit on the bus without exceeding the weight limit. The test cases are generated such that the first person does not exceed the weight limit.

Note that only one person can board the bus at any given turn.```

-- Write your MySQL query statement below

SELECT q1.person_name
FROM Queue q1
LEFT JOIN Queue q2
ON (q2.turn <= q1.turn)
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY q1.turn DESC
LIMIT 1
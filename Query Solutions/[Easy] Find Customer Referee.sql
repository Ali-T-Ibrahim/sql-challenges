-- Problem: Find Customer Referee
-- Source: LeetCode
-- Link: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-23

-- Brief problem description:

```Find the names of the customer that are not referred by the customer with id = 2.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT name FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL
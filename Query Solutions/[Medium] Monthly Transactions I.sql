-- Problem: Monthly Transactions I
-- Source: LeetCode
-- Link: https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-27

-- Brief problem description:

```Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT DATE_FORMAT (trans_date, '%Y-%m') AS month, country,
       COUNT(*) AS trans_count,
       COUNT(IF (state = 'approved', 1, NULL)) AS approved_count,
       SUM(amount) AS trans_total_amount,
       SUM(IF (state = 'approved', amount, 0)) AS approved_total_amount
FROM Transactions
GROUP BY month, country
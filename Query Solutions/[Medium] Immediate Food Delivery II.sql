-- Problem: Immediate Food Delivery II
-- Source: LeetCode
-- Link: https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-27

-- Brief problem description:

```If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.```

-- Write your MySQL query statement below

SELECT ROUND(AVG(order_date = customer_pref_delivery_date)*100, 2) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN
    (
        SELECT customer_id, MIN(order_date) FROM Delivery
        GROUP BY customer_id
    )
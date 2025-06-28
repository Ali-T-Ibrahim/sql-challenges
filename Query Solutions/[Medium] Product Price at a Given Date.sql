-- Problem: Product Price at a Given Date
-- Source: LeetCode
-- Link: https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Medium]
-- Date: 2025-06-28

-- Brief problem description:

```Initially, all products have price 10.

Write a solution to find the prices of all products on the date 2019-08-16.

Return the result table in any order.```

-- Write your MySQL query statement below

SELECT d.product_id, IFNULL(new_price, 10) AS price

-- grab all ditinct product_ids in the FROM
FROM (SELECT DISTINCT product_id FROM Products) d

-- First JOIN creates table of latest date if before target date
-- and NULL otherwise
LEFT JOIN (
    SELECT product_id, MAX(change_date) AS latest
    FROM Products
    WHERE change_date <= "2019-08-16"
    GROUP BY product_id
) p
USING(product_id)

-- Second JOIN reverse looks up price from latest date and fills
-- in 10 as default price if no price changes before target in SELECT
LEFT JOIN (
    SELECT product_id, new_price, change_date
    FROM products
) final_price
ON final_price.product_id = p.product_id
    AND final_price.change_date = p.latest
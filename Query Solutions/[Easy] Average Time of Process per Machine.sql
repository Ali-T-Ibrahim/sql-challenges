-- Problem: Average Time of Process per Machine
-- Source: LeetCode
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: [Easy]
-- Date: 2025-06-25

-- Brief problem description:

```There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

Return the result table in any order. ```

-- Write your MySQL query statement below
-- ATTEMPT 1

# Write your MySQL query statement below
SELECT start.machine_id,
       ROUND(SUM((end.timestamp - start.timestamp))/COUNT(start.machine_id), 3) AS processing_time

FROM Activity start
INNER JOIN Activity end
ON start.machine_id = end.machine_id AND start.process_id = end.process_id
WHERE start.activity_type = "start" AND end.activity_type = "end"
GROUP BY machine_id

-- ATTEMPT 2 (FILTER EARLY, CTEs)

# Write your MySQL query statement below
WITH
starts AS (SELECT machine_id, process_id, activity_type, timestamp
           FROM Activity
           WHERE activity_type = "start"  
),

ends AS (SELECT machine_id, process_id, activity_type, timestamp
           FROM Activity
           WHERE activity_type = "end"
)

SELECT s.machine_id, ROUND(AVG(e.timestamp - s.timestamp), 3) as processing_time FROM starts s
INNER JOIN ends e
ON s.machine_id = e.machine_id AND s.process_id = e.process_id
GROUP BY s.machine_id
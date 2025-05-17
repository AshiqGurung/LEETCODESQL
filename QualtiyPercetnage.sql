--https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT 
DISTINCT
query_name,
ROUND(SUM((rating/position)) / COUNT(query_name), 2) AS quality,
ROUND(COUNT(CASE WHEN rating < 3 THEN 1 END) * 100.0 / COUNT(query_name), 2) AS poor_query_percentage
FROM
Queries 
WHERE position between 1 AND 500 AND rating between 1 AND 5
Group by query_name

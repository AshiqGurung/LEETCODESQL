-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

SELECT 
contest_id,
ROUND(COUNT(DISTINCT user_id) * 100.0 / (SELECT COUNT( user_id) FROM Users), 2) AS percentage
FROM Register 
Group BY contest_id
ORDER BY 
percentage DESC,
contest_id ASC

--Question - https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50

select 
s.user_id,
ROUND(
        IFNULL(SUM(c.action = 'confirmed') / COUNT(c.action), 0),
        2
    ) AS confirmation_rate
FROM Signups s 
LEFT JOIN Confirmations c ON c.user_Id = s.user_Id
GROUP BY s.user_id
ORDER BY s.user_id

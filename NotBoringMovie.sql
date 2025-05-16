-- https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50

-- USING SQL MOD FUNCTION TO RETURN REMAINDER

SELECT  
id, movie, description, rating
FROM Cinema
Where  MOD(id, 2) = 1 AND description <> 'boring'
ORDER BY rating DESC

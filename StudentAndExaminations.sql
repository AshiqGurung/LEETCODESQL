-- Questions : https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50
-- USING CROSS JOIN, unique join operation that returns the Cartesian product of two or more tables. 

SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;

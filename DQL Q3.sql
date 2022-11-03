USE CodeChallengeDB;

SELECT Staff_id,Staff_name,salary,dept_id
FROM STAFF
WHERE salary > (
	SELECT MIN(Avg_Salary)
    FROM (SELECT Dept_id,AVG(Salary) AS 'Avg_Salary'FROM Staff GROUP BY Dept_id) q1 
	WHERE Dept_id IS NOT NULL AND Dept_id != 10) AND dept_id=10
ORDER BY Staff_id ASC;
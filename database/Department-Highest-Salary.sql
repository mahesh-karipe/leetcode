SELECT d.Name AS Department, e.Name AS Employee, e.Salary 
FROM ( 	SELECT e1.* 
		FROM Employee e1
		LEFT JOIN Employee e2 ON e1.DepartmentId = e2.DepartmentId AND e1.Salary < e2.Salary
		WHERE e2.Id IS NULL ) e
JOIN Department d ON d.Id = e.DepartmentId

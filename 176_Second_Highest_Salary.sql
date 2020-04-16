SELECT MAX(Salary) AS SecondHighestSalary 
  FROM (
      SELECT Salary , RANK() OVER (ORDER BY Salary DESC) AS RN
        FROM Employee 
  )
  WHERE RN = 2;
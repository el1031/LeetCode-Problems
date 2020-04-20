select b.Name as Department 
      ,a.Name as Employee
      ,a.Salary
  from (
      select Name,Salary,DepartmentId,
             rank() over (partition by DepartmentId order by Salary desc) as rn
        from Employee 
  ) a
 inner join Department b
    on (a.DepartmentId = b.Id)
 where rn = 1;
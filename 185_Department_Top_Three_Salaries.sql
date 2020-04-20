select b.Name as Department 
      ,a.Name as Employee 
      ,a.Salary 
  from (
    select Id, Name , Salary , DepartmentId , DENSE_RANK() OVER (partition by DepartmentId order by Salary desc ) as rk
      from Employee 
  ) a
 inner join Department b
    on (a.DepartmentId = b.Id)
 where a.rk <= 3
 order by b.Id, a.rk;
select a.name as Employee 
from Employee a
inner join Employee b
  on (a.ManagerId = b.id)
where a.Salary > b.Salary;
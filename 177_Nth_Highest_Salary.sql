CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    /* Write your PL/SQL query statement below */
    select max(Salary)
      into result
      from (
        select Salary, dense_rank() over (order by Salary desc) as rn
          from Employee
      )
     where rn = N;

    
    RETURN result;
END;
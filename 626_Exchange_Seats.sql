select rownum as id
      ,student
  from (
      select case when MOD(id,2) <> 0 then nvl(LEAD(student) OVER (ORDER BY id),student)
             else LAG(student) OVER (ORDER BY id)
             end student
       from seat 
  );
delete from Person 
where Id not in (
    select a.Id
      from (
        select min(Id) as Id, Email
          from Person
         group by Email
      ) a
);
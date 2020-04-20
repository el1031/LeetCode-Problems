select class
from (
    select distinct class, student
      from courses
)
group by class
having count(*) >= 5;
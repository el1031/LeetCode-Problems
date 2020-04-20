select a.Id
  from Weather a 
 inner join Weather b
    on (a.RecordDate - b.RecordDate = 1 and a.Temperature > b.Temperature);
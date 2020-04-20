select Score , DENSE_RANK() OVER (order by Score desc) as Rank
  from Scores; 
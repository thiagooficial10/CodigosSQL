/*No mesmo dataset anterior, calcule a média de duração das viagens por tipo de 
cliente (“subscriber_type”) por ano*/


select 
   round (avg(duration_minutes),1) as media_duracao_viagens,
   subscriber_type,
   extract (year from start_time) as year
 from `bigquery-public-data.austin_bikeshare.bikeshare_trips`
group by subscriber_type, year
order by year

/*No mesmo dataset e tabela, retorne os jogos que começaram entre maio e junho 
de 2016.*/

SELECT startTime
FROM `bigquery-public-data.baseball.schedules`
where startTime between '2016-05-01' and '2016-06-01'
order by startTime

/*Vá ao dataset público “baseball” e na tabela “schedules” traga os identificadores
únicos, o nome do time da casa e o nome do time de fora de casa dos jogos em
que a duração foi maior ou igual a 250 minutos e menos de 25 mil espectadores.*/

SELECT gameId as ID
, homeTeamName as time_da_casa
, awayTeamName as time_visitante
,duration_minutes as duracao_partida
, attendance as expectadores
FROM `bigquery-public-data.baseball.schedules`
where (duration_minutes >= 250) and attendance <25000


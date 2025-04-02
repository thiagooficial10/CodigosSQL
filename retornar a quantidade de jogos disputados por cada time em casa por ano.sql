/*No mesmo dataset e tabela do exercício anterior, retornar a quantidade de jogos
disputados por cada time em casa por ano e também a soma de minutos jogados
em casa por ano. Ordenar de forma decrescente pelo ano e depois crescente
pelo nome do time.*/


SELECT 
     homeTeamName, count (*) as qtd_jogos_em_casa,
     sum(duration_minutes) as minutos_jogados,
      extract(year from startTime) as ano
 FROM `bigquery-public-data.baseball.schedules` 
 group by (ano), homeTeamName
 order by homeTeamName 

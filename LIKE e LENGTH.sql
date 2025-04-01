/*8) DESAFIO: No mesmo dataset anterior, descubra o nome dos times que tenham 
somente 6 caracteres, usando o like(PROFESSOR PROVAVELMENTE ERROU, DEVE UTILIZAR O LENGHT). Retorne de forma única.*/

SELECT distinct homeTeamName, awayTeamName
FROM `bigquery-public-data.baseball.schedules`
where length(homeTeamName) = 6;


-- CASO EU QUEIRA UNIR DUAS TABELAS DE NOMES, POR EXEMPLO TIME DA CASA E TIME VISITANTE, E VER OS NOMES DISTINTOS COM 6 CARACTERES.
SELECT DISTINCT time_nome
FROM (
    SELECT homeTeamName AS time_nome  
    FROM `bigquery-public-data.baseball.schedules`
    WHERE LENGTH(homeTeamName) = 6
  
    UNION ALL
  
    SELECT distinct awayTeamName AS time_nome  
    FROM `bigquery-public-data.baseball.schedules`
    WHERE LENGTH(awayTeamName) = 6
) AS times_combinados;


--DESCOBRI A FORMA DE COMO USAR O LIKE
SELECT distinct homeTeamName
FROM `bigquery-public-data.baseball.schedules`
where homeTeamName like '______'

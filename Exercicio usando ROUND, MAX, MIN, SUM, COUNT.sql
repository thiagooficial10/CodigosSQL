/* Retorne em uma só consulta os valores de média, máximo, mínimo, contagem e 
soma do campo “attendance” da tabela “schedules”, dataset “baseball”, mesmo 
que a contagem e a soma de torcedores nos estádios não tenham significado 
para análise de negócio*/


SELECT 
      round(avg(attendance),2) as media_torcedores,
      max(attendance) as maximo_torcedores,
      min(attendance) as minimo_torcedores,
      sum(attendance) as soma_torcedores,
      count(distinct attendance) as contagem_torcedores
 FROM `bigquery-public-data.baseball.schedules` ;

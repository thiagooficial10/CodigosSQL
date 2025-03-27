--# Selecionando a coluna da tabela actor
--# onde actor_id for igual a 100
--# ordenando em decrescente por last_name

select actor_id, last_name, first_name from actor 
where actor_id = 100 
order by last_name 


-- UTILIZANDO WHERE COM AND LIMITANDO A 100 LINHAS
SELECT *  FROM `bigquery-public-data.chicago_crime.crime` 
where primary_type = 'CRIM SEXUAL ASSAULT' and description = 'PREDATORY' and location_description = 'VEHICLE NON-COMMERCIAL'
LIMIT 100

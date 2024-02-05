--# Selecionando a coluna da tabela actor
--# onde actor_id for igual a 100
--# ordenando em decrescente por last_name

select actor_id, last_name, first_name from actor 
where actor_id = 100 
order by last_name 

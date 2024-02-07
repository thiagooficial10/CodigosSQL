--# Selecionando a coluna actor_id, last_name, first_name da coluna actor
--# onde actor_id for menor igual a 10
--# ordenando em decrescente por last_name

select actor_id, last_name, first_name from actor 
where actor_id <=10
order by actor_id

-- COMO O CASE FUNCIONA

select 
      id,
      name,
      case
          when name = 'Cosméticos e Perfumaria' then 'Sim, é categoria de cosmeticos'
          when name = 'Informática' then 'Sim, é informatica'
          else 'Não'
          end as nome_coluna
from teste.categoria



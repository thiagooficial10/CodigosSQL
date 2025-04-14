-- USANDO ALIAS E JOIN, NECESSARIO PASSAR REFERENCIA DO BANCO POIS ESTOU USANDO BIGQUERY
-- O RESTANTE É PADRÃO

select 
       c.name as nome_categoria,
       p.name as nome_produto
from teste.produtos as p
join teste.categoria c on p.category_id = c.id 

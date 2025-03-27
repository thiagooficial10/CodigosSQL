select  
  id,
  first_name,
  additionals,
  coalesce (additionals, "Ops, o complemento é nulo") as complemento -- cria uma nova coluna, verifica se o additionals é nulo, e tras o texto indicado.
from teste.customers
limit 10;

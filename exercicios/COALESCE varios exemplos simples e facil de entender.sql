--O COALESCE é uma função SQL que retorna o primeiro valor não nulo de uma lista de expressões. Ele é muito útil para tratar valores nulos (NULL) de forma controlada, substituindo por algum valor padrão.

select  
  id,
  first_name,
  additionals,
  coalesce (additionals, "Ops, o complemento é nulo") as complemento -- cria uma nova coluna, verifica se o additionals é nulo, e tras o texto indicado.
from teste.customers
limit 10;
---------------------------------------------------------------------------------------------------------------------

SELECT COALESCE(NULL, NULL, 'valor padrão');
-- Resultado: 'valor padrão'

SELECT COALESCE(NULL, 5, 10);
-- Resultado: 5

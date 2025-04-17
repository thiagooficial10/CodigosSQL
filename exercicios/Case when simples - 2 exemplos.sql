-- COMO O CASE FUNCIONA
--O SQL testa cada condição na ordem. Quando encontra a primeira condição verdadeira, retorna o resultado correspondente. Se nenhuma condição for verdadeira, executa o que estiver no ELSE.
      
select 
      id,
      name,
      case
          when name = 'Cosméticos e Perfumaria' then 'Sim, é categoria de cosmeticos'
          when name = 'Informática' then 'Sim, é informatica'
          else 'Não'
          end as nome_coluna
from teste.categoria

------------------------------------------------------------------------------------------------------------

SELECT 
  produto,
  preco,
  CASE 
    WHEN preco > 100 THEN 'Caro'
    WHEN preco BETWEEN 50 AND 100 THEN 'Médio'
    ELSE 'Barato'
  END AS faixa_preco
FROM produtos;


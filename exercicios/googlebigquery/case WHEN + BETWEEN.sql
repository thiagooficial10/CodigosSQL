-- LEMBRANDO QUE ESTOU USANDO BIGQUERY NO GOOGLE
SELECT  id, 
        name,
        case
          when id between 0 and 5 then 'Primeiro verdadeiro' --condição (precisa estar entre 0 e 5)
          when id between 3 and 5 then 'Segundo verdadeiro'  -- condição (precisa estar entre 3 e 5) (ele vai ignorar essa linha, pois verifica a primeira condição primeiro, nao sobescreve)
          when id between 3 and 7 then 'Terceiro verdadeiro' -- condição (6 e 7 vão funcionar normal)
          end as coluna_verificadora
FROM `bigquery-public-data.thelook_ecommerce.distribution_centers` 
order by id

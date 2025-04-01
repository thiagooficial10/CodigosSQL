-- REALIZANDO A CONTAGEM DOS PEDIDOS POR DATA
 SELECT 
      COUNT(distinct order_id) as quantidade_pedidos,
      date (created_at) as data_ped
 FROM `bigquery-public-data.thelook_ecommerce.orders` 
 group by data_ped
 order by data_ped;


-- REALIZANDO A CONTAGEM DOS PEDIDOS POR ANO
 SELECT 
      COUNT(distinct order_id) as quantidade_pedidos,
      extract(year from created_at) as ano
 FROM `bigquery-public-data.thelook_ecommerce.orders` 
 group by ano
 order by ano

/* Ache o dataset “thelook_ecommerce” nos dados públicos do BigQuery. Traga os 
usuários que não tem compra em dezembro de 2022.
Funciona para qualquer ano e mes*/

SELECT 
      u.first_name as nome,
      u.email,
      i.created_at,
      round((sale_price),2) as valor
 FROM `bigquery-public-data.thelook_ecommerce.users`  u
join `bigquery-public-data.thelook_ecommerce.order_items` i on u.id = i.user_id and i.status = 'Complete'
WHERE (EXTRACT(YEAR FROM i.created_at) != 2022 --Exclui compras feitas no ano de 2022.
OR EXTRACT(MONTH FROM i.created_at) != 12  --Exclui compras feitas no mês de dezembro.
OR i.created_at IS NULL) -- exclui as datas nulas
order by created_at 

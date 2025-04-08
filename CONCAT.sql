#CONCAT

SELECT
"ola",
"mundo",
concat ('ola', 'mundo');
-----------------------------------------------------------------------------------------------------------------
SELECT 
        id,
        first_name,
        last_name,
        concat(first_name, ' ', last_name) as nome_completo
FROM `bigquery-public-data.thelook_ecommerce.users` ;

-----------------------------------------------------------------------------------------------------------------
-- JUNTA A PRIMEIRA FRASE COM A MEDIA, E DPS A SEGUNDA FRASE COM A RECEITA
SELECT  
    o.order_id,
    concat('Quantidade total de itens no pedido: ', avg(o.num_of_item), ' - ', 'Receita total do pedido: ', round(sum(sale_price),2)) as no_detalhe
FROM `bigquery-public-data.thelook_ecommerce.orders` o
join `bigquery-public-data.thelook_ecommerce.order_items`  oi on o.order_id = oi.order_id
group by o.order_id

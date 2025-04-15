/* No mesmo dataset, traga informações resumidas sobre os usuários (de todos, 
tendo ou não compras). Id do usuário, quantidade de compras realizadas, 
quantidade de itens comprados, ticket médio, quantidade de produtos distintos 
comprados, centro de distribuições dos quais o usuário recebeu produtos, 
quantidade de criações de carrinho*/


SELECT 
      u.id,
      count (distinct o.order_id) as compras_realizadas, --contando pedidos distintos
      count(distinct oi.id) as qtd_itens_comprados, -- contando itens distintos comprados
      case  -- foi necessario criar um case, pois alguns usuarios nao tem compras, entao a divisao seria por 0, por isto o tratamento
        when -- quando a quantidade de compras for maior que 0, eu faço a condição
            count(distinct o.order_id) > 0 then round(sum(oi.sale_price),2) /count(distinct o.order_id) --estou somando a receita total e dividindo pela quantidade de pedidos
            else 0 -- caso ele nao tenha feito compra, retorna como 0 o ticket medio
            end as ticket_medio,
    count (distinct p.id) as produtos_distintos,  
    count (distinct dc.id) as centros_distribuicao,
    count (distinct e.id) as eventos_carrinhos
 FROM `bigquery-public-data.thelook_ecommerce.users`  u
join `bigquery-public-data.thelook_ecommerce.orders` o on u.id = o.user_id 
join `bigquery-public-data.thelook_ecommerce.order_items` oi on  o.order_id = oi.order_id 
join `bigquery-public-data.thelook_ecommerce.products` p on  p.id = oi.product_id 
join `bigquery-public-data.thelook_ecommerce.distribution_centers` dc on  dc.id = p.distribution_center_id
join `bigquery-public-data.thelook_ecommerce.events` e on  e.user_id = u.id and event_type = 'cart' -- alem do join, estou restringindo a um tipo de evento
group by u.id

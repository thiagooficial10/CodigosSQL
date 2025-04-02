
SELECT  
      round (sum(e.sale_price), 2) as total_vendas,
      format_date('%Y-%m',created_at) as mes
FROM `bigquery-public-data.thelook_ecommerce.order_items`  as e
where e.status = 'Complete'
group by mes
order by mes

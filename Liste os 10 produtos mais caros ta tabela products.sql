-- Limit e Order By
-- Liste os 10 produtos mais caros ta tabela products

select *
from sales.products
Order by price desc
Limit 10 

-- Crie a coluna "nome completo" contendo o nome do cliente

select 
  nome || ' ' || sobrenome as [nome completo]
from sales.customers

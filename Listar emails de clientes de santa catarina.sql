-- Liste os emails dos clientes da nossa base que moram no estado de santa catarina

select email, state 
from sales.customers 
where = 'SC'

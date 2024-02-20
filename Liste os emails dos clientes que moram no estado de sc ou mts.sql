--Liste os emails dos clientes que moram no estado de Santa catarina OU Mato grosso do sul

select email, state
from sales.customers
where = 'SC' or state = 'MTS'

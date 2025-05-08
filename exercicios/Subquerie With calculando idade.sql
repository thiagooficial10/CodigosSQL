-- calcule a idade media dos clientes por status profissional
-- FOI PRECISO UTILIZAR O WITH PORQUE NÃO TENHO A IDADE DO CLIENTE, ENTAO FOI PRECISO CALCULAR NA SUBQUERIE

with alguma_tabela as (
  select
    status_profissional,
    (current_date - data_nascimento) / 365 as idade
  from clientes
  )

  -- querie que da o status profissional e a idade media (AVG)
select
  status_profissional,
  avg(idade) as idade_media
from alguma_tabela
group by status_profissional

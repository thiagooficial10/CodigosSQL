
/*Ache a tabela “top_terms” no dataset “google_trends”, e descubra os termos,
suas posições no rank e áreas de pesquisa para os termos começados com “N”
no dia 2023-04-30. Obs.: não se esqueça de colocar essa restrição de data no 
where, pois a tabela é grande e particionada (processa somente a data que você 
colocar). Ordene por rank.*/


-- a primeira consulta é do professor
SELECT 
    t.term,
    t.rank,
    t.dma_name
FROM bigquery-public-data.google_trends.top_terms t
WHERE STARTS_WITH(t.term, "N")
  AND DATE(t.week) = "2023-04-30";

-- essa consulta é minha
select 
    t.term,
    t.rank,
    t.dma_name
from bigquery-public-data.google_trends.top_terms t
where t.term like 'i%' and t.week = date '2023-04-30'
order by t.rank
limit 10


/* DIFERENÇAS

t.term LIKE 'N%'	STARTS_WITH(t.term, 'N')

Ambas têm a mesma função lógica: filtrar termos que começam com "N". 
Mas a função STARTS_WITH() é mais clara semanticamente e às vezes pode ter comportamento diferente em otimizações internas do BigQuery (especialmente com indexações ou partições).*/

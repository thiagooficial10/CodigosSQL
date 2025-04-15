/*DEMANDA
2 - Extração: realizar a extração de todos os processos que podem ser considerados como coletivos no sistema, vide regra baixo:
numero do processo que se repetem + de 10X
numero de precatorio que se repetem + de 10X
flag de processo coletivo marcada
*/

-- DESTA FORMA ELE PEGA TODAS AS REGRAS, AINDA É NECESSARIO MUDAR PARA SE APLICAR A CADA UMA DAS REGRAS.

use us_dw

-- Cria a tabela temporária com a contagem de repetições e a flag de processo coletivo
-- Verifica e remove a tabela temporária se ela existir
IF OBJECT_ID('TEMPDB.DBO.#processocoletivo') IS NOT NULL
    DROP TABLE #processocoletivo;

-- Cria a tabela temporária com os resultados da consulta
SELECT 
    pr.NumeroProcesso,
    pr.precatorio,
    COUNT(*) AS contagem_repeticoes,
    pr.coletivo AS processo_coletivo
INTO #processocoletivo
FROM pjus_replica_2..Processo pr
GROUP BY pr.NumeroProcesso, pr.precatorio, pr.coletivo
HAVING COUNT(*) > 10;


-- Cria uma tabela temporária com processos que aparecem mais de 10 vezes
IF OBJECT_ID ('TEMPDB.DBO.#processos_cond') IS NOT NULL 
DROP TABLE #processos_cond   --- pratica comum para evitar duplicidade do nome da tabela

select 
		NumeroProcesso,
		count (*)		AS contagem_repeticoes
INTO #processos_cond
from #processocoletivo
group by NumeroProcesso
HAVING COUNT(*) > 10;


-- Cria uma tabela temporária com precatórios que aparecem mais de 10 vezes
IF OBJECT_ID('TEMPDB.DBO.#precatorios_cond') IS NOT NULL 
    DROP TABLE #precatorios_cond;  --- pratica comum para evitar duplicidade do nome da tabela

select 
		precatorio,
		count (*)		AS contagem_repeticoes
INTO #precatorios_cond
from #processocoletivo
group by precatorio
having  count (*) > 10;


-- Cria uma tabela temporária com processos que são coletivos
IF OBJECT_ID('TEMPDB.DBO.#coletivos') IS NOT NULL 
    DROP TABLE #coletivos;  -- Prática comum para evitar duplicidade do nome da tabela

-- Verifica se a coluna 'coletivo' é a correta e se existe na tabela 'Processo'
SELECT
    pc.NumeroProcesso,
    pc.precatorio,
    pc.contagem_repeticoes,
    p.coletivo AS coletivo
INTO #coletivos
FROM #processocoletivo pc
LEFT JOIN pjus_replica_2..Processo p
    ON pc.NumeroProcesso = p.NumeroProcesso
WHERE p.coletivo = 1;  -- Supondo que 1 indica que é um processo coletivo

-- Seleciona os processos coletivos
SELECT 
    NumeroProcesso,
    precatorio,
    contagem_repeticoes,
    coletivo
FROM #coletivos
ORDER BY NumeroProcesso;



*/

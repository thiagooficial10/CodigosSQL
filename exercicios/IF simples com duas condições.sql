-- UTILIZANDO IF SIMPLES E VERIFICANDO AS COLUNAS SE TEM A DESCRIÇÃO ABAIXO, CASO NAO TENHA, RETORNE "NAO ENCONTROU"
SELECT  id, 
        name,
        if(name = 'Cosméticos e Perfumaria', "Sim, é cosmeticos", if(name = 'Informática', 'Sim, é informatica', 'Nao encontrou' )) as verificador
FROM teste.categoria

/*Ache a tabela “stations” do dataset “new_york_subway” e substitua no campo 
“station_name”, a palavra “St” por “Street” nos casos em que o final do nome 
da estação termine em “St” e “Av” por “Avenue” nos casos em que o final do 
nome da estação termine em “Av”. Traga como resultado somente o campo 
“station_name” de forma distinta e restringindo apenas as linhas que tenham 
“St” ou “Av” no nome*/

--RESULTADO EM DUAS COLUNAS
select distinct
      regexp_replace (station_name, r"St$", "Street") as st_corrigido,
      regexp_replace (station_name, r"Av$", "Avenue") as av_corrigido
from bigquery-public-data.new_york_subway.stations
where regexp_contains (station_name, r' (St|Av)$');


--CASO QUEIRA O RESULTADO EM COLUNA UNICA
SELECT DISTINCT
  REGEXP_REPLACE(
    REGEXP_REPLACE(station_name, r'St$', 'Street'), r'Av$', 'Avenue') AS station_name_modificado
FROM bigquery-public-data.new_york_subway.stations
WHERE REGEXP_CONTAINS(station_name, r'(St|Av)$');

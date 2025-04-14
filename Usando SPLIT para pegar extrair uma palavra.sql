/* [DESAFIO] No mesmo dataset do item anterior e tabela “stop_times”, extraia 
somente o nome do dia da semana do campo “trip_id”, considerando somente 
sábado e domingo como resposta (utilize como restrição no where, usando 
lower e upper também). Traga também o “trip_id” no select.*/


select distinct 
      trip_id,
      case
            when  split (trip_id, "-")[ordinal(3)] = 'SI017' then split (trip_id, "-")[ordinal(4)] -- caso a posição 3 do trip_id seja igual a SI017, traga a posição 4, se nao pode trazer a 3 mesmo.
      else split (trip_id, "-")[ordinal(3)]
      end as dia
from bigquery-public-data.new_york_subway.stop_times
where lower (trip_id) like '%sunday%' or upper(trip_id) like '%SATURDAY%'

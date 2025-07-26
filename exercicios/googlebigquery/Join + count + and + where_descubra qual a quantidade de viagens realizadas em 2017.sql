/*No dataset “austin_bikeshare”, descubra qual a quantidade de viagens 
realizadas em 2017 com duração de 30 minutos ou mais, somente de estações 
(tanto de partida quanto de chegada) que estão atualmente ativas.

OBS.: FOI NECESSARIO FAZER 2 JOINS, UM PARA ESTACAO DE PARTIDAS E OUTRO PARA CHEGADAS
OBS.: FOI NECESSARIO UTILIZAR O CAST NO SEGUNDO JOIN, POIS A COLUNA ESTAVA COMO STRING, NAO DEVERIA, MAS ESTAVA.
*/

select 
    count(trip_id) as viagens
 from `bigquery-public-data.austin_bikeshare.bikeshare_trips` t
 join `bigquery-public-data.austin_bikeshare.bikeshare_stations` si on t.start_station_id = si.station_id
 join `bigquery-public-data.austin_bikeshare.bikeshare_stations` sf on t.end_station_id = cast(si.station_id as string)
where extract (year from start_time) = 2017
    and duration_minutes >= 30
    and si.status = 'active'
    and sf.status = 'active'

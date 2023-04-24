-- Qual mapa mais jogados pelos argentinos?
select t1.descMapName,
       count(distinct t1.idLobbyGame) as qtdLobby
from tb_lobby_stats_player as t1
left join tb_players as t2
on t1.idPlayer = t2.idPlayer
where t2.descCountry = 'ar'
group by t1.descMapName
order by qtdLobby desc


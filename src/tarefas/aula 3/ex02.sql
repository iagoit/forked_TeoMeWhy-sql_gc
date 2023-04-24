-- De qual país é o jogador que tem maior taxa de HS?
select t1.idPlayer,
       t2.descCountry,
       avg(100.0 * t1.qtHs / t1.qtKill) as txHs
       --count(distinct t1.idLobbyGame),
       --sum(t1.qtKill)
from tb_lobby_stats_player as t1
left join tb_players as t2
on t1.idPlayer = t2.idPlayer
group by t1.idPlayer, t2.descCountry
having count (DISTINCT t1.idLobbyGame) > 5
order by txHs desc

-- Obs: Diferença entre WHERE e HAVING, o WHERE vc consegue filtrar sem função de agredação (sum, avg, count,etc), ja o HAVING vc consegue filtrar com funções de agregação
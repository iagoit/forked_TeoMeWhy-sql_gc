SELECT t2.descMapName,
       count(DISTINCT t2.idLobbyGame) as qtdePartidas

FROM tb_players as t1
LEFT JOIN tb_lobby_stats_player as t2
ON t1.idPlayer = t2.idPlayer

WHERE t1.descCountry = 'br'

GROUP BY t2.descMapName
ORDER BY qtdePartidas DESC

-- O nulo é porque tem alguns players que nunca jogaram nenhum mapa
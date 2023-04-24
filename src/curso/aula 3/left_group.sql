/*
SELECT t1.*,
       t2.idLobbyGame,
       t2.descMapName

FROM tb_players AS t1
LEFT JOIN tb_lobby_stats_player AS t2
ON t1.idPlayer = t2.idPlayer
*/

SELECT t1.descCountry,
       t2.descMapName,
       COUNT(DISTINCT t2.idLobbyGame) AS qtPartidas

FROM tb_players AS t1
LEFT JOIN tb_lobby_stats_player AS t2
ON t1.idPlayer = t2.idPlayer

GROUP BY t1.descCountry,
         t2.descMapName
ORDER BY t1.descCountry, qtPartidas DESC
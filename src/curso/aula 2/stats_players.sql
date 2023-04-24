-- Win rate e quantidade de jogos jogados por cada player
/*
SELECT idPlayer,
       avg(flWinner) as winRate,
       count(DISTINCT(idLobbyGame)) as qtdLobby
FROM tb_lobby_stats_player
GROUP BY idPlayer
*/

-- Win rate e quantidade de jogos jogados por cada player e qtdLobby > 10
SELECT idPlayer,
       avg(flWinner) as winRate,
       count(DISTINCT(idLobbyGame)) as qtdLobby
FROM tb_lobby_stats_player
GROUP BY idPlayer
HAVING qtdLobby >= 10
ORDER BY winRate DESC
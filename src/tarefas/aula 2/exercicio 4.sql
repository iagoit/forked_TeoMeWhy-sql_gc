-- Qual o mapa mais jogado?
/*
SELECT descMapName,
       count(descMapName) as nomeMapa
FROM tb_lobby_stats_player
GROUP BY descMapName
ORDER BY nomeMapa DESC
*/


-- Resolução do Teo
SELECT descMapName,
       count(distinct idLobbyGame) as qtdePartidas,
       count(*) as qtdePartidasPlayer
FROM tb_lobby_stats_player
GROUP BY descMapName
ORDER BY qtdePartidas DESC


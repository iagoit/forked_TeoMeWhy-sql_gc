-- Qual o player com menor taxa média de HS?
SELECT idPlayer,
       avg(1.0 * qtHs / qtKill) as txHs
FROM tb_lobby_stats_player
GROUP BY idPlayer
ORDER BY txHs ASC
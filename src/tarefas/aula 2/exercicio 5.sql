-- Qual o historico de DAP?
-- DAP = Daily Active Players
SELECT 
       DATE(dtCreatedAt) as dtDAP,
       count(DISTINCT idPlayer) as DAP
FROM tb_lobby_stats_player
GROUP BY DATE(dtCreatedAt)
ORDER BY DATE(dtCreatedAt)

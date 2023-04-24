-- Qual o país com mais jogadores?
SELECT descCountry,
       count(idPlayer) as qtdPlayers
FROM tb_players
GROUP BY descCountry
ORDER BY qtdPlayers DESC
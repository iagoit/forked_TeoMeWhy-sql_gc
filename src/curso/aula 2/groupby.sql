SELECT descCountry,
       count(*) as qtLinhas,                                 --número de linhas
       count(DISTINCT(idPlayer)) as qtPlayers,   --número de players distintos
       count(DISTINCT(descCountry)) as qtCountry,
       avg(date('now') - date(dtBirth)) as mediaIdade,
       SUM(flFacebook) as totalFB,
       SUM(flTwitch) AS totalTwitch,
       SUM(flTwitter) as totalTwitter
FROM tb_players
GROUP BY descCountry
ORDER BY avg(date('now') - date(dtBirth))
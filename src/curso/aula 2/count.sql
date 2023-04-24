SELECT count(*),                                 --número de linhas
       count(DISTINCT(idPlayer)) as qtPlayers,   --número de players distintos
       count(DISTINCT(descCountry)) as qtCountry
FROM tb_players
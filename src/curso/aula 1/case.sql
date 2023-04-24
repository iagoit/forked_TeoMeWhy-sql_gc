SELECT idPlayer,
       descCountry,
       CASE 
            WHEN descCountry = 'br' THEN 'hu3hu3hu3' 
            WHEN descCountry IN ('ar', 'pe', 'uy', 'py', 'cl') THEN 'manito'
            ELSE 'Outros'
       END AS nacionalidade
FROM tb_players
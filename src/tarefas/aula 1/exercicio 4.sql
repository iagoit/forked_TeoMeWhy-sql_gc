-- Selecione as estatisticas dos players que tiveram mais de 50% de HS em uma partida
SELECT *
       --ROUND(100.0 * qtHs / qtKill, 2) as txHS
FROM tb_lobby_stats_player
WHERE ROUND(100.0 * qtHs / qtKill, 2) > 50.0


/*
Obs:

1. Se utilizar apenas qtHs / qtKill as txHs para pegar a taxa de HS retornará 1 ou 0 pois está tentando dividir INT, então colocamos o 1.0 para a Query entender que queremos um FLOAT.

2. Se precisar arredondar utilizamos a função ROUND e passamos o número de casas decimais, neste caso vamos deixar 2 casas decimais apenas.

3. Agora para que possmos conseguir números de 0 a 100 iremos multiplicar por 100.0

*/
-- Qual a taxa de HS da Tribo?
select flTribo,
       avg(txHs) as avgTxHs
from (

    select t1.idPlayer,
        t1.qtKill,
        t1.qtHs,
        100.0 * t1.qtHs / t1.qtKill as txHs,
        coalesce(t2.flTribo, 0) as flTribo -- substituir os NULL por 0
    from tb_lobby_stats_player as t1
    left join (

        select t1.idPlayer,
            max(1) as flTribo -- marcar players que possuem alguma medalha da tribo

        from tb_players_medalha as t1
        where t1.idMedal in (8, 37)
        and t1.flActive = 1
        group by idPlayer

    ) as t2
    on t1.idPlayer = t2.idPlayer
)
group by 1

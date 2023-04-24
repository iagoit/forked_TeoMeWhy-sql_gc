with tb_tribo as (

    select t1.idPlayer,
            max(1) as flTribo -- marcar players que possuem alguma medalha da tribo

    from tb_players_medalha as t1

    where t1.idMedal in (8, 37)
    and t1.flActive = 1

    group by idPlayer

),

tb_hs as (

    select t1.idPlayer,
           avg(100.0 * t1.qtHs / t1.qtKill) as txHs
    from tb_lobby_stats_player as t1
    group by t1.idPlayer

),

tb_tribo_hs as (

select t1.*,
       coalesce(t2.flTribo, 0) as flTribo

from tb_hs as t1

left join tb_tribo as t2
on t1.idPlayer = t2.idPlayer

)

select flTribo,
       avg(txHs) as avgTxHs

from tb_tribo_hs

group by flTribo
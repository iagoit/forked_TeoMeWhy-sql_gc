-- Qual é o winRate dos assinantes Premium e Plus
/*
select t2.descMedal,
       avg(100.0 * t1.flWinner) AS winRate
from tb_lobby_stats_player as t1
left join tb_medalha as t2
on idPlayer = idPlayer
where descMedal IN ('Membro Plus', 'Membro Premium')
group by t2.descMedal
*/
with tb_subs as (

    select idPlayer,
        case when idMedal = 1 then "Premium" else "Plus" end SubType
    from tb_players_medalha
    where idMedal in (1, 3)
    and flActive = 1
    group by 1,2

),

tb_winrate as (

    select t1.idPlayer,
           avg(100.0 * t1.flWinner) as winRate
    
    from tb_lobby_stats_player as t1

    group by t1.idPlayer

),

tb_subs_winrate as (

    select t1.*,
           coalesce(t2.SubType, "Não sub") as SubType

    from tb_winrate as t1

    left join tb_subs as t2
    on t1.idPlayer = t2.idPlayer

)

select SubType,
       avg(winRate) as avgWinRate

from tb_subs_winrate

group by subType

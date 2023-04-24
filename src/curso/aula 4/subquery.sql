-- Para um único player quantas medalhas diferentes ele tem?
/*
select idPlayer,
       count(distinct idMedal) as qtdDistMedalha
from tb_players_medalha
where flActive = 1 -- filtra apenas medalhas ativas
group by idPlayer
order by qtdDistMedalha desc
*/

-- Qual é o MAX, MIN e AVG de medalhas
select avg(qtdDistMedalha) as avgQtdMedal,
       min(qtdDistMedalha) as minQtdMedal,
       max(qtdDistMedalha) as maxQtdMedal

from(
    select idPlayer,
        count(distinct idMedal) as qtdDistMedalha
    from tb_players_medalha
    where flActive = 1 -- filtra apenas medalhas ativas
    group by idPlayer
    order by qtdDistMedalha desc
)
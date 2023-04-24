with tb_lobbies as (
select *,
       --idLobbyGame,
       --idPlayer,
       row_number() over (partition by idPlayer order by idLobbyGame) as numLinha

from tb_lobby_stats_player

order by idPlayer 

)

select * 
from tb_lobbies
where numLinha <= 3

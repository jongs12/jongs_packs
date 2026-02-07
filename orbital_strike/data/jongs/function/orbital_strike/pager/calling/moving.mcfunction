execute if entity @s[tag=jongs.orbital_strike.drop] run function jongs:orbital_strike/pager/calling/drop/prepare
execute if entity @s[tag=jongs.orbital_strike.rotate] run rotate @s ~-3 ~
execute if score @s jongs.orbital_strike.duration matches ..-1 run return run kill @s
return run scoreboard players remove @s jongs.orbital_strike.duration 1
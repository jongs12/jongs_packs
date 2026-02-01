execute unless loaded ~ ~-0.5 ~ run return run function jongs:orbital_strike/pager/calling/beam
execute unless block ~ ~-0.5 ~ #minecraft:replaceable run return run function jongs:orbital_strike/pager/calling/beam
scoreboard players remove @s jongs.orbital_strike.duration 1
execute if score @s jongs.orbital_strike.duration matches 0.. positioned ~ ~-0.5 ~ run return run function jongs:orbital_strike/pager/calling/position
return run function jongs:orbital_strike/pager/calling/beam
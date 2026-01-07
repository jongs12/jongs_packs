$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/sniper_infinite_health,tag=!jongs_ranged_weapons_hit] run tag @s add jongs_ranged_weapons_hit
execute unless loaded ~ ~ ~ run return run particle minecraft:block{block_state:{Name:"minecraft:emerald_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute unless block ~ ~ ~ #jongs:ranged_weapons/sniper_can_pierce run return run particle minecraft:block{block_state:{Name:"minecraft:emerald_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players add @s jongs_ranged_weapons_distance 1
execute if score @s jongs_ranged_weapons_distance matches ..-1 positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/sniper_rifle/process with entity @s
return run particle minecraft:block{block_state:{Name:"minecraft:emerald_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
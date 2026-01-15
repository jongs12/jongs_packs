$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/sniper_infinite_health,tag=!jongs.ranged_weapons.hit] run tag @s add jongs.ranged_weapons.hit
execute unless loaded ~ ~ ~ run return run particle minecraft:block{block_state:{Name:"minecraft:emerald_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute unless block ~ ~ ~ #jongs:ranged_weapons/sniper_can_pierce run return run particle minecraft:block{block_state:{Name:"minecraft:emerald_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players add @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches ..-1 positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/sniper_rifle/process with entity @s
return run particle minecraft:block{block_state:{Name:"minecraft:emerald_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
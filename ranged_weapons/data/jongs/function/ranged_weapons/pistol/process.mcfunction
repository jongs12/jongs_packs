$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health,predicate=jongs:ranged_weapons/not_invulnerable,limit=1] run return run damage @s 8 minecraft:sweet_berry_bush by @p[scores={jongs_ranged_weapons_loaded=1}]
execute unless loaded ~ ~ ~ run return run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players add @s jongs_ranged_weapons_distance 1
execute if score @s jongs_ranged_weapons_distance matches ..-1 positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/pistol/process with entity @s
return run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
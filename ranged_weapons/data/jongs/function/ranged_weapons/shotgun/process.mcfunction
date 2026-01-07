$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health,predicate=jongs:ranged_weapons/not_invulnerable] run return run scoreboard players add @s jongs_ranged_weapons_hit 7
execute unless loaded ~ ~ ~ run return run particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players add @s jongs_ranged_weapons_distance 1
$execute if score @s jongs_ranged_weapons_distance matches ..-1 positioned ^$(x_delta) ^$(y_delta) ^$(z_delta) run return run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
return run particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
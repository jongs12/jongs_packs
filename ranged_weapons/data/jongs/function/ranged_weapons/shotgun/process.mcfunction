$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health,predicate=jongs:ranged_weapons/not_invulnerable,limit=1] run return run scoreboard players add @s jongs.ranged_weapons.hit 7
scoreboard players add #짝수확인 jongs.ranged_weapons.distance 1
execute if score #짝수확인 jongs.ranged_weapons.distance matches 2 unless loaded ~ ~ ~ run return run particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute if score #짝수확인 jongs.ranged_weapons.distance matches 2 unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute if score #짝수확인 jongs.ranged_weapons.distance matches 2 run scoreboard players set #짝수확인 jongs.ranged_weapons.distance 0
scoreboard players add @s jongs.ranged_weapons.distance 1
$execute if score @s jongs.ranged_weapons.distance matches ..-1 positioned ^$(x_delta) ^$(y_delta) ^$(z_delta) run return run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
return run particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
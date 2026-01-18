$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health] store result score @s jongs.ranged_weapons.hurt_time run data get entity @s HurtTime
$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health,predicate=jongs:ranged_weapons/not_invincible,limit=1] run return run damage @s 9 minecraft:arrow by @p[scores={jongs.ranged_weapons.loaded=1}]
scoreboard players add #짝수확인 jongs.ranged_weapons.distance 1
execute if score #짝수확인 jongs.ranged_weapons.distance matches 2 unless loaded ~ ~ ~ run return run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute if score #짝수확인 jongs.ranged_weapons.distance matches 2 unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
execute if score #짝수확인 jongs.ranged_weapons.distance matches 2 run scoreboard players set #짝수확인 jongs.ranged_weapons.distance 0
scoreboard players add @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches ..-1 positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/assault_rifle/process with entity @s
return run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
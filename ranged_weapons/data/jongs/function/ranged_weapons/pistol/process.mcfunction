$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health] store result score @s jongs_ranged_weapons_hurt_time run data get entity @s HurtTime
$execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health,predicate=jongs:ranged_weapons/not_invincible] run function jongs:ranged_weapons/pistol/success with entity @s
execute unless loaded ~ ~ ~ run function jongs:ranged_weapons/pistol/failed
execute unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run function jongs:ranged_weapons/pistol/failed
scoreboard players add @s jongs_ranged_weapons_distance 1
execute if score @s jongs_ranged_weapons_distance matches 0 if score @s jongs_ranged_weapons_success matches 0 run function jongs:ranged_weapons/pistol/failed
execute if score @s jongs_ranged_weapons_distance matches ..-1 if score @s jongs_ranged_weapons_success matches 0 positioned ^ ^ ^0.5 run function jongs:ranged_weapons/pistol/process with entity @s
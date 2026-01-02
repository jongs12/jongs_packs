$execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health] run function jongs:ranged_weapons/shotgun/success with storage jongs:ranged_weapons
execute unless loaded ~ ~ ~ run function jongs:ranged_weapons/shotgun/failed
execute unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run function jongs:ranged_weapons/shotgun/failed
scoreboard players add @s jongs_ranged_weapons_distance 1
execute if score @s jongs_ranged_weapons_distance matches 0 if score @s jongs_ranged_weapons_success matches 0 run function jongs:ranged_weapons/shotgun/failed
$execute if score @s jongs_ranged_weapons_distance matches ..-1 if score @s jongs_ranged_weapons_success matches 0 positioned ^$(x_delta) ^$(y_delta) ^$(z_delta) run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
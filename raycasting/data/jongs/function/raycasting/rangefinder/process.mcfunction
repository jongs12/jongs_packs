execute unless block ~ ~ ~ #jongs:raycasting/passable run scoreboard players set @s jongs_raycasting_success 1
$execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(UUID)}] run scoreboard players set @s jongs_raycasting_success 2
execute if score @s jongs_raycasting_success matches 1.. run function jongs:raycasting/rangefinder/success
scoreboard players add @s jongs_raycasting_distance 1
execute unless loaded ~ ~ ~ run function jongs:raycasting/rangefinder/failed
execute if score @s jongs_raycasting_distance matches 0 if score @s jongs_raycasting_success matches 0 run function jongs:raycasting/rangefinder/failed
execute if score @s jongs_raycasting_distance matches ..-1 if score @s jongs_raycasting_success matches 0 positioned ^ ^ ^0.1 run function jongs:raycasting/rangefinder/process with entity @s
$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(UUID)},limit=1] at @s run return run function jongs:raycasting/rangefinder/success_entity
execute unless block ~ ~ ~ #jongs:raycasting/passable run return run function jongs:raycasting/rangefinder/success_block
execute unless loaded ~ ~ ~ run return run function jongs:raycasting/rangefinder/failed
scoreboard players add @s jongs_raycasting_distance 1
execute if score @s jongs_raycasting_distance matches ..-1 positioned ^ ^ ^0.1 run return run function jongs:raycasting/rangefinder/process with entity @s
return run function jongs:raycasting/rangefinder/failed
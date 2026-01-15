execute unless block ~ ~ ~ #jongs:raycasting/passable run return run function jongs:raycasting/rangefinder/success_block
$execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(UUID)}] run return run function jongs:raycasting/rangefinder/success_entity with entity @s
execute unless loaded ~ ~ ~ run return run function jongs:raycasting/rangefinder/failed
scoreboard players add @s jongs.raycasting.distance 1
execute if score @s jongs.raycasting.distance matches ..-1 positioned ^ ^ ^0.1 run return run function jongs:raycasting/rangefinder/process with entity @s
return run function jongs:raycasting/rangefinder/failed
particle minecraft:dust_color_transition{from_color:[0.333,1,0.333],to_color:[0.667,0,0.667],scale:2} ~ ~ ~ 0.05 0.05 0.05 0 3 force
function jongs:raycasting/calculate
execute if score @s jongs_raycasting_success matches 1 run function jongs:raycasting/rangefinder/print_block
execute if score @s jongs_raycasting_success matches 2 run function jongs:raycasting/rangefinder/print_entity with entity @s
scoreboard players operation @s jongs_raycasting_rangefinder_cooldown = 거리측정_쿨타임 jongs_raycasting_rangefinder_cooldown
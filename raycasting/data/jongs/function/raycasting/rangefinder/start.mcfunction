scoreboard players operation @s jongs_raycasting_distance = 거리제한 jongs_raycasting_distance
scoreboard players set @s jongs_raycasting_success 0
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function jongs:raycasting/rangefinder/process with entity @s
execute if score @s jongs_raycasting_success matches 1 run function jongs:raycasting/rangefinder/print_entity with entity @s
scoreboard players operation @s jongs_raycasting_rangefinder_cooldown = 거리측정_쿨타임 jongs_raycasting_rangefinder_cooldown
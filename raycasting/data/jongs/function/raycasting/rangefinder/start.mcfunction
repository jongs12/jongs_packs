scoreboard players operation @s jongs_raycasting_distance = 거리제한 jongs_raycasting_distance
scoreboard players set @s jongs_raycasting_success 0
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function jongs:raycasting/rangefinder/process with entity @s
execute as @e[type=minecraft:marker,predicate=jongs:water_bucket_release/setblock_marker] if predicate jongs:water_bucket_release/no_vehicle at @s run function jongs:water_bucket_release/replace
execute as @a run scoreboard players operation @s jongs_water_bucket_release_x_pre = @s jongs_water_bucket_release_x
execute as @a store result score @s jongs_water_bucket_release_x run data get entity @s Pos[0] 100
execute as @a run scoreboard players operation @s jongs_water_bucket_release_z_pre = @s jongs_water_bucket_release_z
execute as @a store result score @s jongs_water_bucket_release_z run data get entity @s Pos[2] 100
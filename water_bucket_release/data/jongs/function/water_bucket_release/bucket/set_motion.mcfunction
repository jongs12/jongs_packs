$summon minecraft:marker ^ ^ ^$(motion) {Tags:["jongs_water_bucket_release_motion"]}
execute as @e[type=minecraft:marker,tag=jongs_water_bucket_release_motion,limit=1] at @s run execute store result score 변화_x jongs_water_bucket_release run data get entity @s Pos[0] 100
execute as @e[type=minecraft:marker,tag=jongs_water_bucket_release_motion,limit=1] at @s run execute store result score 변화_y jongs_water_bucket_release run data get entity @s Pos[1] 100
execute as @e[type=minecraft:marker,tag=jongs_water_bucket_release_motion,limit=1] at @s run execute store result score 변화_z jongs_water_bucket_release run data get entity @s Pos[2] 100
kill @e[type=minecraft:marker,tag=jongs_water_bucket_release_motion,limit=1]
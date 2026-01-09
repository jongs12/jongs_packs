playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1 1
playsound minecraft:item.bucket.empty block @a ~ ~ ~ 1 1
data modify storage jongs:water_bucket_release UUID set from entity @s UUID
execute store result score 위치_x jongs_water_bucket_release run data get entity @s Pos[0] 100
execute store result score 위치_y jongs_water_bucket_release run data get entity @s Pos[1] 100
execute store result score 위치_z jongs_water_bucket_release run data get entity @s Pos[2] 100
summon minecraft:marker ^ ^ ^3 {data:{jongs:[{purpose:water_bucket_release_motion}]}}
execute as @e[type=minecraft:marker,predicate=jongs:water_bucket_release/motion_marker,limit=1] at @s run execute store result score 변화_x jongs_water_bucket_release run data get entity @s Pos[0] 100
execute as @e[type=minecraft:marker,predicate=jongs:water_bucket_release/motion_marker,limit=1] at @s run execute store result score 변화_y jongs_water_bucket_release run data get entity @s Pos[1] 100
execute as @e[type=minecraft:marker,predicate=jongs:water_bucket_release/motion_marker,limit=1] at @s run execute store result score 변화_z jongs_water_bucket_release run data get entity @s Pos[2] 100
kill @e[type=minecraft:marker,predicate=jongs:water_bucket_release/motion_marker,limit=1]
scoreboard players operation 변화_x jongs_water_bucket_release -= 위치_x jongs_water_bucket_release 
scoreboard players operation 변화_y jongs_water_bucket_release -= 위치_y jongs_water_bucket_release 
scoreboard players operation 변화_z jongs_water_bucket_release -= 위치_z jongs_water_bucket_release 
scoreboard players operation 위치_x jongs_water_bucket_release = @s jongs_water_bucket_release_x
scoreboard players operation 위치_x jongs_water_bucket_release -= @s jongs_water_bucket_release_x_pre
execute store result score 위치_y jongs_water_bucket_release run data get entity @s Motion[1] 100
scoreboard players operation 위치_z jongs_water_bucket_release = @s jongs_water_bucket_release_x
scoreboard players operation 위치_z jongs_water_bucket_release -= @s jongs_water_bucket_release_x_pre
execute store result storage jongs:water_bucket_release x float 0.01 run scoreboard players operation 변화_x jongs_water_bucket_release += 위치_x jongs_water_bucket_release 
execute store result storage jongs:water_bucket_release y float 0.01 run scoreboard players operation 변화_y jongs_water_bucket_release += 위치_y jongs_water_bucket_release 
execute store result storage jongs:water_bucket_release z float 0.01 run scoreboard players operation 변화_z jongs_water_bucket_release += 위치_z jongs_water_bucket_release 
execute anchored eyes positioned ^ ^ ^ run function jongs:water_bucket_release/summon with storage jongs:water_bucket_release
data modify storage jongs:water_bucket_release id set from entity @s SelectedItem.id
data modify storage jongs:water_bucket_release data set from entity @s SelectedItem.components."minecraft:custom_data"
execute as @s[gamemode=!creative] run function jongs:water_bucket_release/clear with storage jongs:water_bucket_release
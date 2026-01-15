playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1 1
playsound minecraft:item.bucket.empty block @a ~ ~ ~ 1 1
data modify storage jongs:water_bucket_release UUID set from entity @s UUID
execute store result score 위치_x jongs_water_bucket_release run data get entity @s Pos[0] 100
execute store result score 위치_y jongs_water_bucket_release run data get entity @s Pos[1] 100
execute store result score 위치_z jongs_water_bucket_release run data get entity @s Pos[2] 100
execute store result score 수직각도 jongs_water_bucket_release run data get entity @s Rotation[1] 1.39
execute store result storage jongs:water_bucket_release motion float 0.01 run scoreboard players operation 수직각도 jongs_water_bucket_release += 상수_275 jongs_water_bucket_release
function jongs:water_bucket_release/bucket/set_motion with storage jongs:water_bucket_release
scoreboard players operation 변화_x jongs_water_bucket_release -= 위치_x jongs_water_bucket_release 
scoreboard players operation 변화_y jongs_water_bucket_release -= 위치_y jongs_water_bucket_release 
scoreboard players operation 변화_z jongs_water_bucket_release -= 위치_z jongs_water_bucket_release 
scoreboard players operation 위치_x jongs_water_bucket_release = @s jongs_water_bucket_release_x
scoreboard players operation 위치_x jongs_water_bucket_release -= @s jongs_water_bucket_release_x_pre
execute store result score 위치_y jongs_water_bucket_release run data get entity @s Motion[1] 100
scoreboard players operation 위치_z jongs_water_bucket_release = @s jongs_water_bucket_release_z
scoreboard players operation 위치_z jongs_water_bucket_release -= @s jongs_water_bucket_release_z_pre
execute store result storage jongs:water_bucket_release x float 0.01 run scoreboard players operation 변화_x jongs_water_bucket_release += 위치_x jongs_water_bucket_release 
execute store result storage jongs:water_bucket_release y float 0.01 run scoreboard players operation 변화_y jongs_water_bucket_release += 위치_y jongs_water_bucket_release 
execute store result storage jongs:water_bucket_release z float 0.01 run scoreboard players operation 변화_z jongs_water_bucket_release += 위치_z jongs_water_bucket_release 
execute anchored eyes positioned ^ ^ ^ run function jongs:water_bucket_release/bucket/summon with storage jongs:water_bucket_release
execute as @s[gamemode=!creative] run function jongs:water_bucket_release/bucket/clear
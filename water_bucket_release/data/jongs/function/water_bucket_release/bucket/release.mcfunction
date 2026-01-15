playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1 1
playsound minecraft:item.bucket.empty block @a ~ ~ ~ 1 1
data modify storage jongs:water_bucket_release UUID set from entity @s UUID
execute store result score #위치.x jongs.water_bucket_release.main run data get entity @s Pos[0] 100
execute store result score #위치.y jongs.water_bucket_release.main run data get entity @s Pos[1] 100
execute store result score #위치.z jongs.water_bucket_release.main run data get entity @s Pos[2] 100
execute store result score #각도.수직 jongs.water_bucket_release.main run data get entity @s Rotation[1] 1.39
execute store result storage jongs:water_bucket_release motion float 0.01 run scoreboard players operation #각도.수직 jongs.water_bucket_release.main += #상수.275 jongs.water_bucket_release.main
function jongs:water_bucket_release/bucket/set_motion with storage jongs:water_bucket_release
scoreboard players operation #변화.x jongs.water_bucket_release.main -= #위치.x jongs.water_bucket_release.main 
scoreboard players operation #변화.y jongs.water_bucket_release.main -= #위치.y jongs.water_bucket_release.main 
scoreboard players operation #변화.z jongs.water_bucket_release.main -= #위치.z jongs.water_bucket_release.main 
scoreboard players operation #위치.x jongs.water_bucket_release.main = @s jongs.water_bucket_release.x.cur
scoreboard players operation #위치.x jongs.water_bucket_release.main -= @s jongs.water_bucket_release.x.pre
execute store result score #위치.y jongs.water_bucket_release.main run data get entity @s Motion[1] 100
scoreboard players operation #위치.z jongs.water_bucket_release.main = @s jongs.water_bucket_release.z.cur
scoreboard players operation #위치.z jongs.water_bucket_release.main -= @s jongs.water_bucket_release.z.pre
execute store result storage jongs:water_bucket_release x float 0.01 run scoreboard players operation #변화.x jongs.water_bucket_release.main += #위치.x jongs.water_bucket_release.main 
execute store result storage jongs:water_bucket_release y float 0.01 run scoreboard players operation #변화.y jongs.water_bucket_release.main += #위치.y jongs.water_bucket_release.main 
execute store result storage jongs:water_bucket_release z float 0.01 run scoreboard players operation #변화.z jongs.water_bucket_release.main += #위치.z jongs.water_bucket_release.main 
execute anchored eyes positioned ^ ^ ^ run function jongs:water_bucket_release/bucket/summon with storage jongs:water_bucket_release
execute as @s[gamemode=!creative] run function jongs:water_bucket_release/bucket/clear
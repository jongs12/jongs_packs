$summon minecraft:marker ^ ^ ^$(motion) {Tags:["jongs.water_bucket_release.motion"]}
execute as @e[type=minecraft:marker,tag=jongs.water_bucket_release.motion,limit=1] run execute store result score #변화.x jongs.water_bucket_release.main run data get entity @s Pos[0] 100
execute as @e[type=minecraft:marker,tag=jongs.water_bucket_release.motion,limit=1] run execute store result score #변화.y jongs.water_bucket_release.main run data get entity @s Pos[1] 100
execute as @e[type=minecraft:marker,tag=jongs.water_bucket_release.motion,limit=1] run execute store result score #변화.z jongs.water_bucket_release.main run data get entity @s Pos[2] 100
kill @e[type=minecraft:marker,tag=jongs.water_bucket_release.motion,limit=1]